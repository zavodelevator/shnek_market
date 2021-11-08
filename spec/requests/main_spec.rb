require 'rails_helper'

RSpec.describe "Mains", type: :request do
  describe "GET #index" do
    pending "add some examples (or delete) #{__FILE__}"
  
    let(:brands){ create_list :brand, 3}
    let(:hits){ create_list :products, 8}
  
    before { get :index }

    context 'required output per page' do

      it 'render to index tamplate' do
        is_expected.to render_template :index
      end
 
 
      it 'intance var brands include only brands' do
        expect(assigns(key :brands)).to match_array(brands)
      end

      it 'intance var hits include only hit' do
        expect(assigns(key :hits)).to match_array(hits)
      end

    end
  
  end
end
