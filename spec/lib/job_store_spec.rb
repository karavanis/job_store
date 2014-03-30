require 'spec_helper'

describe JobStore do
  it 'test initial state' do
    Thread.current[:job_store] = nil
    JobStore.store.should == {}
  end

  it 'test init with hash' do
    JobStore.clear!
    JobStore.store.should == {}
  end

  it 'test clear' do
    JobStore.clear!
    JobStore.store[:foo] = 1
    JobStore.clear!
    JobStore.store.should == {}
  end

  it 'test quacks like hash' do
    JobStore.clear!
    JobStore.store[:foo] = 1
    JobStore.store[:foo].should == 1
    JobStore.store.fetch(:foo).should == 1
  end

  it 'test delegates to thread' do
    JobStore.clear!
    JobStore.store[:foo] = 1
    Thread.current[:job_store][:foo].should == 1
  end
end