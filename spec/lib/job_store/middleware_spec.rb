require 'spec_helper'

describe JobStore::Middleware do
  subject(:middleware) { JobStore::Middleware.new }

  let(:queue)   { 'foo' }
  let(:message) { {'args' => ['foo', 'bar'], 'queue' => queue } }

  describe '#call' do
    it 'should respond' do
      middleware.respond_to?(:call).should be_true
    end

    it 'should require three arguments' do
      expect do
        middleware.call
      end.to raise_error( ArgumentError,'wrong number of arguments (0 for 3)')
    end

    context do
      before do
        JobStore.store[:foo] = 'bar'
      end

      it 'should clear the job store' do
        middleware.call(nil, message, queue) {}

        JobStore.store.should == {}
      end
    end
  end
end