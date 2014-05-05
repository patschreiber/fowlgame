class Test 

  def print_to_log
    Rails.logger.debug "Whatever cron job works"
  end

end
