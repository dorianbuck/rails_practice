RSpec.describe 'GET /api/movies', type: :request do
  subject { response }
  describe 'when movies is returned' do
    let!(:movies) do
      create_list(:movie, 3)
      create(:movie, title: 'title', genre: 'horror', year: '2022-01-01', description: 'Lorem')
    end
    before do
      get '/api/movies'
    end
    it { is_expected.to have_http_status 200 }
  end

  describe 'when no movies are returned' do
    before do
      get '/api/movies'
    end
    it { is_expected.to have_http_status 404 }
    it ('returns an error message') do
      expect(response.body).to match(/No movies found/)
    end
  end
end
