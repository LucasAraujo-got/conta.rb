require_relative 'cliente'

class Conta
        attr_reader :numero, :titular
        attr_accessor :saldo

    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end

    def sacar(valor)
        if saldo >= valor
        self.saldo -= valor
        else
        puts "Não foi possivel executar o saque."
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(conta_destino, valor)
        sacar(valor)
        conta_destino.depositar(valor)
    end
end