class ADF
  # pega apenas um caracter
  def proximo
    puts "Entre com o próximo símbolo:"
    gets.chomp 
  end

  def iniciar
    estado = "q0"

    puts "Máquina iniciou no estado: " + estado
    
    loop do
      case [proximo, estado]
      in ["a", "q0"]
        estado = "q1"
      in ["b", "q0"]
        estado = "q0"
      in ["a", "q1"]
        estado = "q2"
      in ["b", "q1"]
        estado = "q0"
      in ["a", "q2"]
        estado = "q3"
      in ["b", "q2"]
        estado = "q0"
      in ["a", "q3"]
        estado = "q4"
      in ["b", "q3"]
        estado = "q5"
      in ["a", "q4"]
        estado = "q4"
      in ["b", "q4"]
        estado = "q0"
      in ["a", "q5"]
        estado = "q6"
      in ["b", "q5"]
        estado = "q5"
      in ["a", "q6"]
        estado = "q7"
      in ["b", "q6"]
        estado = "q5"
      in ["a", "q7"]
        estado = "q8"
      in ["b", "q7"]
        estado = "q5"
      in ["a", "q8"]
        estado = "q9"
      in ["b", "q8"]
        estado = "q10"
      in ["a", "q9"]
        estado = "q9"
      in ["b", "q9"]
        estado = "q5"
      in ["a", "q10"]
        estado = "q11"
      in ["b", "q10"]
        estado = "q10"
      in ["a", "q11"]
        estado = "q12"
      in ["b", "q11"]
        estado = "q10"
      in ["a", "q12"]
        estado = "q13"
      in ["b", "q12"]
        estado = "q10"
      in ["a", "q13"]
        estado = "q14"
      in ["a", "q14"]
        estado = "q14"
      in ["b", "q14"]
        estado = "q10"
      in ["", "q10"]
        puts "Aceito"
        break
      in ["", "q11"]
        puts "Aceito"
        break
      in ["", "q12"]
        puts "Aceito"
        break
      in ["", "q13"]
        puts "ERRO"
        break
      in ["", "q14"]
        puts "Aceito"
        break
      else
        puts "Erro"
        break
      end
      puts "Estado: " + estado
    end
  end
end

adf = ADF.new()
adf.iniciar()