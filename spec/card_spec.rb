require 'spec_helper'

describe 'trello_cards' do
  it 'can create a card' do

    api_key = ENV['TRELLO_API_KEY']
    auth_token = ENV['TRELLO_AUTH_TOKEN']

    service_instance = service_instance('trello_cards')

    params = {
      'board_id' => list_id,
      'name' => name
    }

    service_instance.test_action('createCard', params) do
      expect_info message: 'Initializing connection to Trello.'
      expect_return
    end
  end
end
