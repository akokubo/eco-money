require 'rails_helper'

describe 'Home Pages' do

  subject { page }

  describe 'index page' do
    before { visit root_path }
    it { should have_content('Home') }
  end
end
