# um programa onde você insira as opções de filmes disponiveis e ele escolha um para você não ficar preso no paraxo

## um menu com opções para adicionar filmes


#        metodos
#   metodo para o menu

ADICIONAR_UM_FILME = 1
VER_FILMES = 2
ESCOLHER_FILME = 3
SAIR = 4

def menu()
    puts
    puts '-=' * 18 + '-'
    puts 'Seja bem vindo(a) ao Desparadoxidor'
    puts '-=' * 18 + '-'
    puts
    puts '[1] Adicionar um filme'
    puts '[2] Ver filmes adicionados'
    puts '[3] Escolher um filme'
    puts '[4] Sair'
    print 'Escolha uma opção: '
    return gets.to_i()
end

def quebra_de_linha()
    puts '-' * 18
end

def adicionar_filme()
    print 'Digite o nome do filme: '
    return gets.chomp()
end

opcao = menu()

filmes = []


loop do 
    if opcao == ADICIONAR_UM_FILME
        filmes << adicionar_filme()
        quebra_de_linha()
        puts "O filme: #{filmes.last} foi adicionado com sucesso!"
    elsif opcao == VER_FILMES
        if filmes.empty?
            quebra_de_linha()
            puts 'A lista de filmes está vaiza! Adicione um filme.'
            quebra_de_linha()
        else
        quebra_de_linha()
        puts "Lista de filmes: #{filmes}"
        quebra_de_linha()
        end
    elsif opcao == ESCOLHER_FILME
        filme_escolhido = filmes[rand(filmes.length())]
        quebra_de_linha()
        puts  "O filme escolhido foi: #{filme_escolhido}"
        quebra_de_linha()
    elsif opcao == SAIR
        puts
        puts 'Obrigado por usar o Desparadoxiador, até logo!'
        puts
        break
    else
        puts 'Insira uma opção válida'
    end
    opcao = menu()
end















