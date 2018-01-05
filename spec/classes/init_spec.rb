require 'spec_helper'
describe 'apach' do
  context 'with default values for all parameters' do
    it { should contain_class('apach') }
  end
end
