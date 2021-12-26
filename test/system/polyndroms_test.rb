# frozen_string_literal: true

require 'application_system_test_case'

class PolyndromsTest < ApplicationSystemTestCase
  setup do
    @polyndrom = polyndroms(:one)
  end

  test 'visiting the index' do
    visit polyndroms_url
    assert_selector 'h1', text: 'Polyndroms'
  end

  test 'creating a Polyndrom' do
    visit polyndroms_url
    click_on 'New Polyndrom'

    fill_in 'Index', with: @polyndrom.index
    fill_in 'Num', with: @polyndrom.num
    fill_in 'Rev', with: @polyndrom.rev
    fill_in 'Theory', with: @polyndrom.theory
    click_on 'Create Polyndrom'

    assert_text 'Polyndrom was successfully created'
    click_on 'Back'
  end

  test 'updating a Polyndrom' do
    visit polyndroms_url
    click_on 'Edit', match: :first

    fill_in 'Index', with: @polyndrom.index
    fill_in 'Num', with: @polyndrom.num
    fill_in 'Rev', with: @polyndrom.rev
    fill_in 'Theory', with: @polyndrom.theory
    click_on 'Update Polyndrom'

    assert_text 'Polyndrom was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Polyndrom' do
    visit polyndroms_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Polyndrom was successfully destroyed'
  end
end
