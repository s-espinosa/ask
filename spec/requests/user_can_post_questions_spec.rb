require 'rails_helper'

describe 'POST /api/v1/questions' do
  describe 'with valid attributes' do
    it 'creates a new question' do
      post '/api/v1/questions', params: {text: 'Why not me?'}

      expect(Question.count).to eq(1)
      expect(Question.last.text).to eq('Why not me?')
    end
  end

  describe 'with extra attributes' do
    it 'creates a new question and ignores those attributes' do
      post '/api/v1/questions', params: {text: 'Why not me?', created_at: '1993-01-01 14:58:17.944145'}

      expect(Question.count).to eq(1)
      expect(Question.last.text).to eq('Why not me?')
      expect(Question.last.created_at).to_not eq('1993-01-01 14:58:17.944145')
    end
  end

  describe 'with invalid attributes' do
    it 'creates a new question' do
      expect{ post '/api/v1/questions', params: {test: 'Why not me?'}  }.to raise_error(ActionController::RoutingError)
      expect(Question.count).to eq(0)
    end
  end
end
