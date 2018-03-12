class ChattyOutput < ActiveRecord::Migration[5.2]
  def change
    puts "Hello from puts"
    say "Hello from say"
    say "Hello from indented", true
    say_with_time "Long process running" do
      sleep 5
    end
    suppress_messages do
      puts "Hello from puts"
      say "Hello from say"
      say "Hello from indented", true
    end
  end
end
