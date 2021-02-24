puts "PUTS: Hello World"
print "PRINT: Hello World"
print "PRINT: Hello World"

puts p "PUTS* P: Hello World"
p 100     # 結果: 100
puts 100  # 結果: 100
p '100'   # 結果: "100"
puts '100'# 結果: 100

# 代入
y = "World"
num = 2019
printf('Hello %s %d', y, num) # 結果: Hello World 2019 
# [printf]は変数を交えて出力したいとき
# 「%s」は「次のカンマの後にくる文字列の変数を表示する」という意味になります。「%d」はそれの数値版です。

# メソッドの定義
def hi
  puts "PUTS* hi: Hello World"
end

hi()

def hihoge(text = 'world')
  puts "PUTS* hihoge: HELLO #{text.capitalize}"
end

hihoge()
hihoge('maiWorld')

class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

# オブジェクトを作る
greeter = Greeter.new("Pat")
greeter.say_hi # 結果：Hi Pat!
greeter.say_bye # 結果：Bye Pat, come back soon.
