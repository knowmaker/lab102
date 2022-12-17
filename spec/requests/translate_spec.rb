# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Translates', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/?format=xml'
      expect(response).to have_http_status(:success)
    end

    it 'returns correct result' do
      get '/?format=rss&ch=6'
      expect(response).to have_http_status(:success)
      expect(@response.headers['Content-Type']).to include('application/rss')
    end
  end
end
