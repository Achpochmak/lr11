# frozen_string_literal: true

json.extract! polyndrom, :id, :index, :num, :rev, :theory, :created_at, :updated_at
json.url polyndrom_url(polyndrom, format: :json)
