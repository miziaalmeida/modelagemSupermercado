import Cocoa

// Classe pai
class Pessoa {
    //Atributos de Pessoa
    var nome: String
    var idade: String
    var cpf: Int
    var endereco: String
    var email: String
    var telefone: Int
    
    //Construtor inicial
    init(nome: String, idade: String, cpf: Int, endereco: String, email: String, telefone: Int) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.endereco = endereco
        self.email = email
        self.telefone = telefone
    }
    
    //Métodos de Pessoa
    func cadastrarPessoa(){
        print("Cadastro realizado")
    }
    
    func atualizarCadastro(){
        print("Cadastro atualizado")
    }
    
    func excluirCadastro(){
        print("Cadastro excluído")
    }
}

//Classe filho: demonst. herança
class Funcionario: Pessoa {
    //Atributos classe Funcionário
    var cargo: String
    var franquiaAlocacao: String
    var salario: Double
        
    //Construtor classe Funcionário
    init(nome: String, idade: String, cpf: Int, endereco: String, email: String, telefone: Int, cargo: String, franquiaAlocacao: String, salario: Double){
          self.cargo = cargo
          self.franquiaAlocacao = franquiaAlocacao
          self.salario = salario
          super.init(nome: nome, idade: idade, cpf: cpf, endereco: endereco, email: email, telefone: telefone)
      }
  
    //Métodos classe Funcionário
    func receberSalario() {
        print("Salário recebido")
    }
    
    func definirTurno() {
        print("Turno definido")
    }
    
    func definirFolga() {
        print("Folga definida!")
    }
    
    func organizarEstoque() {
        print("Estoque organizado!")
    }
}

//Classe filho: demonst. herança
class Cliente: Pessoa {
    //Atributos classe Cliente
    var numeroCartao: Int
    var codigoDaCompra: Int
    var formaDePagamento: String
    
    //Construtor classe Cliente
    
    //Construtor classe Cliente
    init(nome: String, idade: String, cpf: Int, endereco: String, email: String, telefone: Int, numeroCartao: Int, codigoDaCompra: Int, formaDePagamento: String){
          self.numeroCartao = numeroCartao
          self.codigoDaCompra = codigoDaCompra
          self.formaDePagamento = formaDePagamento
          super.init(nome:nome, idade: idade, cpf: cpf, endereco: endereco, email: email, telefone: telefone)
      }
    
    //Métodos classe Cliente
    func efetuarPagamento() {
        print("Pagamento concluído")
    }
    
    func fazerPedido() {
        print("Pedido concluído")
    }
    
    func consultarProduto() {
        print("Consulta concluída")
    }
}

//Testes

//Cliente
let judar = Cliente(nome: "Judar Lima", idade: "33", cpf: 1234567890, endereco: "Rua dos bobos, 0", email: "jud@g.com", telefone: 119876689, numeroCartao: 1221334, codigoDaCompra: 11113, formaDePagamento: "Cartão Debito")
print("Nome do cliente: \(judar.nome)", "Idade: \(judar.idade)", "CPF: \(judar.cpf)")
judar.fazerPedido()

let mizia = Cliente(nome: "Mízia Lima", idade: "27", cpf: 1020321002, endereco: "Rua dos bobos, 0", email: "mizia.@gmail.com", telefone: 11947562345, numeroCartao: 14567, codigoDaCompra: 19088, formaDePagamento: "Cartao Credito")
print("Nome do cliente: \(mizia.nome)", "Idade: \(mizia.idade)", "CPF: \(mizia.cpf)")
mizia.efetuarPagamento()
mizia.cadastrarPessoa()

//Funcionario
let maria = Funcionario(nome: "Maria de Mar", idade: "34", cpf: 1112998338, endereco: "Rua nao sei, 10", email: "mary@superm.com", telefone: 12345677, cargo: "Gerente", franquiaAlocacao: "Cambui/Campinas", salario: 2520.57)
print(maria)
maria.definirTurno()
maria.receberSalario()
