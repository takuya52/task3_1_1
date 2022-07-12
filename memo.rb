require "csv"

puts "1(新規メモ作成)2(既存のメモ編集する)"
memo_type = gets.to_i
puts memo_type

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "完了したら、Ctrl + D を押します"
  
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv", "w") do |csv|
    csv.puts ["#{memo}"]
  end

elsif memo_type == 2
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "完了したら、Ctrl + D を押します"
  
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv", "a") do |csv|
    csv.puts ["#{memo}"]
  end
  
end