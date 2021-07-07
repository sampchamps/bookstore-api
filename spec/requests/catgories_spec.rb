require 'rails_helper'

RSpec.describe "Catgories", type: :request do
  let!(:catgories) { create_list(:catgory, 5 )}
  let!(:catgory_id) { catgories.first.id }


  describe 'GET /catgories' do
    before { get '/api/v1/catgories'}
    it 'returns catgories' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)  
    end
  end

  describe 'POST /catgory' do
    let(:valid_name) {{ name: 'Horror'}}

    context 'when the request is valid' do
       before { post '/api/v1/catgories', params: valid_name}

       it 'creates a catgory' do
         expect(json['name']).to eq('Horror')  
       end

       it 'returns status code 201' do
         expect(response).to have_http_status(201)  
       end
    end
    

    context "when the reqest is invalid" do
      before { post '/api/v1/catgories', params: {name: ''}}

      it 'returns a validation failure messages' do
        expect(response.body).to include(" is too short (minimum is 3 characters)") 
      end
    end
  end
  
  describe 'DELETE /catgories/:id' do
    before { delete "/api/v1/catgories/#{catgory_id}" }
    
    it 'returns status code 204' do
      expect(response).to have_http_status(204)  
    end
  end
end
