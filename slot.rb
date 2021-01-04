credit = 100
points = 0

loop do
  
  puts "残りコイン数#{credit}"
  puts "ポイント数#{points}"
 
  puts "何コイン入れますか？"
  puts "1(10コイン)　2(30コイン)　3(50コイン)　4(やめとく)"
  
  bet_number = gets.to_i
  if bet_number == 1
    bet = 10
    if credit < bet
      puts "コインが足りません"
      puts "終了します"
      break
    end
    credit -= 10
  elsif bet_number == 2
    bet = 30
    if credit < bet
      puts "コインが足りません"
      puts "終了します"
      break
    end
    credit -= 30
  elsif bet_number == 3
    bet = 50
    if credit < bet
      puts "コインが足りません"
      puts "終了します"
      break
    end
    credit -= 50
  else
    puts "終了します"
    break
  end
  
  
  puts "エンターを３回押しましょう"
  puts "-------------------------------------------"
  puts = gets
  
  num1 = rand(1..9)
  num2 = rand(1..9)
  num3 = rand(1..9)
  num4 = rand(1..9)
  num5 = rand(1..9)
  num6 = rand(1..9)
  num7 = rand(1..9)
  num8 = rand(1..9)
  num9 = rand(1..9)
  
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  puts "-------------------------------------------"
  puts = gets
  
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  puts "-------------------------------------------"
  puts = gets
  
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  puts "-------------------------------------------"
  if  ((num1 ==7) && (num1 == num4) && (num4 == num7)) ||  ((num2 == 7) && (num2 == num5) && (num5 == num8)) || ((num3 == 7) && (num3 == num6) && (num6 == num9)) 
    puts "-------------------------------------------"
    puts "おめでとう！７が揃いました！"
    puts "#{bet * 10}コイン獲得！"
    puts "#{bet * 50}ポイント獲得！"
    credit += bet * 10
    points += bet * 50
    puts "-------------------------------------------"
    
  elsif ((num1 == num4) && (num4 == num7)) ||  ((num2 == num5) && (num5 == num8)) || ((num3 == num6) && (num6 == num9))
    if (num1 == num4) && (num4 == num7)
      puts "-------------------------------------------"
      puts "おめでとう！#{num1}が揃いました！"
      puts "#{bet * 5}コイン獲得！"
      puts "#{bet * 25}ポイント獲得！"
      credit += bet * 5
      points += bet * 25
      puts "-------------------------------------------"
    
    elsif (num2 == num5) && (num5 == num8)
      puts "-------------------------------------------"
      puts "おめでとう！#{num2}が揃いました！"
      puts "#{bet * 5}コイン獲得！"
      puts "#{bet * 25}ポイント獲得！"
      credit += bet * 5
      points += bet * 25
      puts "-------------------------------------------"
      return true
    else
      puts "-------------------------------------------"
      puts "おめでとう！#{num3}が揃いました！"
      puts "#{bet * 5}コイン獲得！"
      puts "#{bet * 25}ポイント獲得！"
      credit += bet * 5
      points += bet * 25
      puts "-------------------------------------------"
  
    end
  elsif ((num1 ==7) && (num1 == num5) && (num5 == num9)) || ((num3 ==7) && (num3 == num5) && (num5 == num7))
    puts "-------------------------------------------"
    puts "おめでとう！７が揃いました！"
    puts "#{bet * 10}コイン獲得！"
    puts "#{bet * 50}ポイント獲得！"
    credit += bet * 10
    points += bet * 50
    puts "-------------------------------------------"
  
  elsif ((num1 == num5) && (num5 == num9)) || ((num3 == num5) && (num5 == num7))
    puts "-------------------------------------------"
    puts "おめでとう！#{num5}が揃いました！"
    puts "#{bet * 5}コイン獲得！"
    puts "#{bet * 25}ポイント獲得！"
    credit += bet * 5
    points += bet * 25
    puts "-------------------------------------------"
  
    
  else
    puts "-------------------------------------------"
    puts "残念！もう一回チャレンジしよう！"
    puts "-------------------------------------------"
    
  end
end
