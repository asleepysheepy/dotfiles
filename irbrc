require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 200
IRB.conf[:HISTROY_FILE] = "#{ENV['HOME']}/.cache/irb_history"
