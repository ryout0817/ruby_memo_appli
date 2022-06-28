require "csv"
puts "以下の数字を入力してください"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

num_type = gets.to_i                                     #数字を押される 
if num_type == 1                                         #1出力
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp                               #改善点　ファイル名出力
    CSV.open("#{file_name}.csv","w+") do |contents|      #改善点
        puts "メモしたい内容を入力してください"
        puts "完了したら Ctr + D を押下してください"
        contents << [$stdin.read]                        #内容出力
        end
elsif num_type == 2
    puts "既存の拡張子を除いたファイル名を入力してください。"
    file_name = gets.chomp
    CSV.open("#{file_name}.csv","a+") do |contents_add|
        puts "内容を編集後　Ctr ＋ Dを押下してください"
        contents_add << [$stdin.read]
    end
else
        puts "1と2を入力してください"
end