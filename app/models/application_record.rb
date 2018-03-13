class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  private
    def benchmark
      puts '******** init **********'
      start_time = Time.now
      yield
      end_time = Time.now
      puts '******** end **********'
      puts "******* Process took #{end_time - start_time} seconds"
    end
end
