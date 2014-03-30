module JobStore
  class Middleware
    def call(worker, msg, queue)
      JobStore.clear!
      yield
    end
  end
end