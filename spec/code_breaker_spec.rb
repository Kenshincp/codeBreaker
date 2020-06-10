require './lib/code_breaker'

describe CodeBreaker do
    it "intento con 10 y gano" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        codeBreaker.validar 10
        result = codeBreaker.status
        #assert
        expect(result).to eq "Ganaste!"
    end

    it "intento con 20 y pierdo" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        codeBreaker.validar 20
        result = codeBreaker.status
        #assert
        expect(result).to eq "Perdiste!"
    end
end