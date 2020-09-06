import Cocoa

// Classe pai
class Pessoa {
    //Atributos de Pessoa
    var nome: String
    var idade: String
    var cpf: String
    var endereco: String
    var email: String
    var telefone: String
    
    //Construtor inicial
    init(nome: String, idade: String, cpf: String, endereco: String, email: String, telefone: String) {
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
    var salario: String
        
    //Construtor classe Funcionário
    init(nome: String, idade: String, cpf: String, endereco: String, email: String, telefone: String, cargo: String, franquiaAlocacao: String, salario: String){
          self.cargo = cargo
          self.franquiaAlocacao = franquiaAlocacao
          self.salario = salario
          super.init(nome:nome, idade:idade, cpf:cpf, endereco:endereco, email:email, telefone:telefone)
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
    var numeroCartao: String
    var codigoDaCompra: String
    var formaDePagamento: String
    
    //Construtor classe Cliente
    
    //Construtor classe Cliente
    init(nome: String, idade: String, cpf: String, endereco: String, email: String, telefone: String, numeroCartao: String, codigoDaCompra: String, formaDePagamento: String){
          self.numeroCartao = numeroCartao
          self.codigoDaCompra = codigoDaCompra
          self.formaDePagamento = formaDePagamento
          super.init(nome:nome, idade:idade, cpf:cpf, endereco:endereco, email:email, telefone:telefone)
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
