require "job_store/version"
require "job_store/middleware"

module JobStore
  def self.store
    Thread.current[:job_store] ||= {}
  end

  def self.clear!
    Thread.current[:job_store] = {}
  end
end