RSpec.describe 'GET /api/movie/:id', type: :request do
  subject { response }
  describe 'when movie is returned' do
    let!(:movie) do
      create(:movie, title: 'title',
                     genre: 'horror',
                     year: '2022-01-01',
                     description: 'Lorem',
                     image: 'placeholder')
    end
    before do
      get "/api/movies/#{movie.id}"
    end
    it { is_expected.to have_http_status 200 }
  end

  describe 'when movie is not returned' do
    before do
      get '/api/movies/0'
    end
    it { is_expected.to have_http_status 404 }
    it('returns an error message') do
      expect(response_json['error']).to eq('Movie not found')
    end
  end
end
