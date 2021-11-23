RSpec.describe 'POST /api/movies', type: :request do
  subject { response }
  describe 'when movie is created' do
    before do
      post '/api/movies',
           params: { movie: { title: 'title',
                              genre: 'horror',
                              year: '2022-01-01',
                              description: 'Lorem',
                              image: 'placeholder' } }
    end
    it { is_expected.to have_http_status 201 }

    it 'returns a success message' do
      expect(response.body).to match(/Movie created successfully/)
    end
  end

  describe 'when movie is not created' do
    before do
      post '/api/movies', params: { movie: { title: '', genre: '', year: '', description: '' } }
    end
    it { is_expected.to have_http_status 422 }

    it 'returns an error message' do
      expect(response_json['error']).to eq("Title can't be blank, Genre can't be blank, Year can't be blank, Description can't be blank, Image can't be blank")
    end
  end
end
