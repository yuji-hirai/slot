coin = 100
point = 0

while coin > 0
	puts "---------------------","残りのコイン数#{coin}","ポイント#{point}","BETする枚数を入力してください（やめる：0を入力）","---------------------"
	input_coin = gets.to_i

	if coin <= 0 || input_coin == 0
		break
	elsif input_coin <= coin
		coin -= input_coin
	elsif  input_coin > coin
		puts "コインが必要数足りません","残りコイン数を確認して、入れてください"
	next
	end

	puts "エンターを3回押しましょう!"
	array_1 = ["|","|","|","|"]
	array_2 = ["|","|","|","|"]
	array_3 = ["|","|","|","|"]
	get_coin_1 = 0
	get_coin_2 = 0
	get_coin_3 = 0
	todal_get_coin = 0
	todal_get_point = 0
	i = 1

	while i < 6
		enter_button = gets.to_i            #  エンター用
		puts"","---------------------"
		array_1.insert(i, rand(1..9).to_s)
		array_2.insert(i, rand(1..9).to_s)
		array_3.insert(i, rand(1..9).to_s)
		puts array_1.join
		puts array_2.join
		puts array_3.join
	i += 2
	end
	puts"","---------------------"

	if array_1[1] == array_2[1] && array_1[1] == array_3[1]
		puts "左に#{array_1[1]}が揃いました"
		get_coin_1 = 100
	end

	if array_1[3] == array_2[3] && array_1[3] == array_3[3]
		puts "真ん中に#{array_1[3]}が揃いました"
		get_coin_2 = 100
	end

	if array_1[5] == array_2[5] && array_1[5] == array_3[5]
		puts "右に#{array_1[5]}が揃いました"
		get_coin_3 = 100
	end

	todal_get_coin  = get_coin_1 + get_coin_2 + get_coin_3
	if todal_get_coin > 0
		todal_get_point = 5 * todal_get_coin
		puts "#{todal_get_coin}コイン獲得","#{todal_get_point}ポイント獲得"
	else puts "ざんねん！！"
	end

	coin += todal_get_coin
	point += todal_get_point
end

	if coin > 0
	puts "---------------------","残りのコイン数#{coin}","ポイント#{point}","終了します","---------------------"
	else puts "コインがなくなりましたので、終了します"
	end