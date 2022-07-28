# じゃんけん
def janken
  puts "最初は、じゃんけん..."
  puts "0:グー, 1:チョキ, 2:パー"
  player_hand = gets.to_i
  program_hand = rand(3)
  

  # 無効
  if player_hand > 2
    puts "入力された値が無効です。"
    return true
  end
  
  jankens = ["グー", "チョキ", "パー"]

  
  puts "あなたの手は#{jankens[player_hand]}、プログラムの手は#{jankens[program_hand]}です。"
  
  if player_hand == program_hand
    puts "あいこです。"
    return true
  elsif (player_hand == 2 && program_hand == 0) || (player_hand == 1 && program_hand == 2) || (player_hand == 0 && program_hand == 1)
    puts "あなたの勝ちです。"
    return false
  else 
    puts "負けです。"
    return false
  end
end
  


# あっち向いてホイ
def acchimuite_hoi
  puts "あっち向いて..."
  puts "0:上, 1:下, 2:右, 3:左,"
  player_direction = gets.to_i
  program_direction = rand(5)
  
  # 無効
  if player_direction > 4
    puts "入力された値が無効です。"
    return false
  end
  
  acchimuite_hois = ["上", "下", "右", "左"]
  puts "あなたの手は#{acchimuite_hois[player_direction]}、プログラムの手は#{acchimuite_hois[program_direction]}です。"
  
  if player_direction =! program_direction
    puts "負けです。"
    return true
  else 
    puts "あなたの勝ちです。"
    return true
  end
  
end

next_janken = ture
while next_janken do
  next_janken = janken
end

if next_janken == false
  acchimuite_hoi
end