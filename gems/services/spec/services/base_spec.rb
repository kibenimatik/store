require 'spec_helper'

module Services
  describe Base do
    describe '#new' do
      subject { Services::Base.new({as: :john, params: {foo: 'bar'}})}
      its(:accessor) { should eq(:john) }
      its(:params) { should eq({foo: 'bar'}) }
    end
  end
end
