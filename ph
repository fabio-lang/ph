def calcular(num1, num2, operacao):
  if operacao == 'soma':
      return num1 + num2
  elif operacao == 'subtração':
      return num1 - num2
  elif operacao == 'divisão':
      if num2 == 0:
          return "Erro: Divisão por zero não é permitida."
      return num1 / num2
  else:
      return "Operação inválida."

def calcular_imc(peso, altura):
  return peso / (altura ** 2)

def classificar_imc(imc):
  if imc < 18.5:
      return "Abaixo do peso"
  elif 18.5 <= imc < 24.9:
      return "Peso normal"
  elif 25 <= imc < 29.9:
      return "Sobrepeso"
  else:
      return "Obesidade"

def calcular_idade(ano_nascimento, ano_atual):
  return ano_atual - ano_nascimento

def calculadora():
  while True:
      try:
          num1 = float(input("Digite o primeiro número: "))
          operacao = input("Selecione a operação (soma, subtração, divisão): ").strip().lower()
          num2 = float(input("Digite o segundo número: "))

          resultado = calcular(num1, num2, operacao)
          print(f"O resultado é: {resultado}")

      except ValueError:
          print("Entrada inválida. Por favor, insira números válidos.")

      sair = input("Deseja calcular novamente? (s/n): ").strip().lower()
      if sair != 's':
          break

def calculadora_imc():
  while True:
      try:
          altura = float(input("Digite sua altura em metros (ex: 1.75): "))
          peso = float(input("Digite seu peso em kg (ex: 70): "))

          imc = calcular_imc(peso, altura)
          classificacao = classificar_imc(imc)

          print(f"Seu IMC é: {imc:.2f}")
          print(f"Classificação: {classificacao}")

      except ValueError:
          print("Entrada inválida. Por favor, insira números válidos.")

      sair = input("Deseja calcular novamente? (s/n): ").strip().lower()
      if sair != 's':
          break

def calculadora_idade():
  ano_atual = 2023  # Atualize para o ano atual se necessário
  while True:
      try:
          ano_nascimento = int(input("Digite seu ano de nascimento: "))
          idade = calcular_idade(ano_nascimento, ano_atual)
          print(f"Sua idade é: {idade} anos.")

      except ValueError:
          print("Entrada inválida. Por favor, insira um ano válido.")

      sair = input("Deseja calcular novamente? (s/n): ").strip().lower()
      if sair != 's':
          break

def tela_login():
  while True:
      login = input("Digite seu login: ")
      senha = input("Digite sua senha: ")

      if login == "XPTO" and senha == "12345678":
          print("Acesso Liberado")
          return
      else:
          print("Acesso negado. Tente novamente.")

def main():
  tela_login()

  while True:
      print("\nMenu:")
      print("1. Calculadora")
      print("2. Calculadora de IMC")
      print("3. Calculadora de Idade")
      print("4. Sair")

      opcao = input("Selecione uma opção (1-4): ")

      if opcao == '1':
          calculadora()
      elif opcao == '2':
          calculadora_imc()
      elif opcao == '3':
          calculadora_idade()
      elif opcao == '4':
          print("Saindo do aplicativo.")
          break
      else:
          print("Opção inválida. Por favor, selecione uma opção válida.")

if _name_ == "_main_":
  main()
