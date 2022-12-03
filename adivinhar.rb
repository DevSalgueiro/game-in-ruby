jogo = "yes"

    while jogo == "yes"



    team = %w{vasco flamengo botafogo fluminense palmeiras cruzeiro bahia sport}
    team_sorteado = team.sample #usando método
    palavra_tamanho = team_sorteado.size

    puts "Descubra o nome do time:"

    palavra_parcial = []
    palavra_tamanho.times do
        palavra_parcial << " _ "
    end

    puts palavra_parcial.join #usando método

    fim = false

    while fim == false
        puts "Escolha um letra: "
        sua_letra = gets.chomp #usando método

        aux = 0

        team_sorteado.each_char do |letra|
            if palavra_parcial[aux] == ' _ '
                if letra == sua_letra
                palavra_parcial[aux] = sua_letra
            end
        end

    aux += 1 
    end

    if palavra_parcial.join.count(" _ ") > 0
        fim = false
        puts palavra_parcial.join
    else
        fim = true
    end
    end


    puts "Você acertou, a palavra era #{palavra_parcial.join}!"
    puts "Deseja jogar novamente (yes/no)"
    jogo = gets.chomp

end

puts "Obrigado por jogar!"


