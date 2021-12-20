def main
    while !IsGameStart()
    end
end

def IsGameStart
    janken = JankenResult()
    if janken == 2
        puts "あいこで..."
        return false
    end
    
    if !Acchimuite()
        puts "再度、じゃんけん..."
        return false
    end

    if janken == 1
        puts "あなたの勝ちです"
    else
        puts "あなたの負けです"
    end
    return true
end

# じゃんけん
def JankenResult
    puts "じゃんけん..."
    puts "0(グー) 1(チョキ) 2(パー)"

    player_hand = gets.to_i
    plogram_hand = rand(3)

    jankens = ["グー","チョキ","パー"]

    puts "------------------------------"
    puts "あなたの手:#{jankens[player_hand]}"
    puts "相手の手:#{jankens[plogram_hand]}"
    puts "------------------------------"

    result = 0 # 負け:0 勝ち:1 あいこ:2
    if player_hand == plogram_hand
        result = 2
    elsif ((player_hand == 0 && plogram_hand == 1)||(player_hand == 1 && plogram_hand == 2)||(player_hand == 2 && plogram_hand == 0))
        result =1
        return result
    end
end

# あっち向いてホイ
def Acchimuite
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(右) 3(左)"

    player_fing = gets.to_i
    plogram_fing = rand(4)

    choices = ["上","下","右","左"]

    puts "------------------------------"
    puts "あなた:#{choices[player_fing]}"
    puts "相手:#{choices[plogram_fing]}"
    puts "------------------------------"

    return (player_fing == plogram_fing)
end

main()