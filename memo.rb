require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する) 3(メモを削除する）"

num_type = gets.to_i
if num_type == 1
    puts "拡張子を除いたファイルを入力してください"
    
    CSV.open('test.csv','w+') do |file_name|
        file_name << [gets.chomp]
    end
        puts "メモしたい内容を記入してください"
        puts "完了したら Ctr + D を押します"
    CSV.open('test.csv','a+') do |contents|
        contents << [gets.chomp]
    end
    num_type = STDIN.read
    elsif num_type == 2
        CSV.read('test.csv')
    elsif num_type == 3
        CSV.open('test.csv','w')
end