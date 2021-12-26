# frozen_string_literal: true

require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get index_input_url
    assert_response :success
  end

  test 'should get output' do
    get index_output_url, params: { num: 263 }
    assert_response :success
  end

  test 'should get 263' do
    post index_output_url, params: { num: 263 }
    assert_response :success
    assert_equal Polyndrom.find_by(param: '263').num.split(' ').map { |n| Integer(n) }, [263, 625, 1151, 2662]
  end

  test 'should get show' do
    get index_show_url
    assert_response :success
  end
end
