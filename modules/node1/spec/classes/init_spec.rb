require 'spec_helper'
describe 'node1' do
  context 'with default values for all parameters' do
    it { should contain_class('node1') }
  end
end
