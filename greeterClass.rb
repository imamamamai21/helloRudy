class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end
end

nilGreeter = MegaGreeter.new
nilGreeter.say_hi # 結果: Hello World!

hogeGreeter = MegaGreeter.new('Hoge')
hogeGreeter.say_hi  # 結果: Hello Hoge!
hogeGreeter.say_bye # Goodbye Hoge.  Come back soon!

hogeGreeter.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
hogeGreeter.say_hi 
#結果: Hello Albert!
#   : Hello Brenda!
#   : Hello Charles!
#   : Hello Dave!
#   : Hello Engelbert!

hogeGreeter.say_bye # 結果: Goodbye Albert, Brenda, Charles, Dave, Engelbert.  Come back soon!

hogeGreeter.names = nil
hogeGreeter.say_hi  #結果: ...
hogeGreeter.say_bye #結果: ...