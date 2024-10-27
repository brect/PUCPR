### 05 - Trabalhando com funções

Funções são fundamentais para organizar o código, melhorar a legibilidade e facilitar a manutenção. 

Em Dart, a estrutura de uma função é parecida com as de outras linguagens, porém com algumas coisas a mais, por exemplo, Dart oferece parâmetros opcionais, funções anônimas, funções de primeira classe, entre outras.



**Declaração de Funções Simples**

Você pode declarar funções com ou sem parâmetros e com ou sem valores de retorno.

```dart
// Função sem parâmetros e sem retorno
void saudacao() {
  print('Olá!');
}

// Função com parâmetros e com retorno
int soma(int a, int b) {
  return a + b;
}

void main() {
  saudacao(); // Saída: Olá!
  int resultado = soma(3, 4);
  print(resultado); // Saída: 7
}
```


**Declarando funções com Parâmetros Opcionais**

Dart permite definir parâmetros opcionais, que podem ser nomeados ou posicionais.


**Funções com Parâmetros Nomeados Opcionais**
```dart
void criarUsuario({String nome = 'Anônimo', int idade = 0}) {
  print('Nome: $nome, Idade: $idade');
}

void main() {
  criarUsuario(nome: 'Alice', idade: 30); //Saída: Nome: Alice, Idade: 30
  criarUsuario(idade: 25); //Saída: Nome: Anônimo, Idade: 25
  criarUsuario(); //Saída: Nome: Anônimo, Idade: 0
}
```

**Funções com Parâmetros Posicionais Opcionais**


```dart
void exibirInfo(String nome, [int? idade]) {
  if (idade != null) {
    print('Nome: $nome, Idade: $idade');
  } else {
    print('Nome: $nome');
  }
}

void main() {
  exibirInfo('Bob', 25); //Saída: Nome: Bob, Idade: 25
  exibirInfo('Carol'); //Saída: Nome: Carol
}
```

**Funções Anônimas**

Funções anônimas são funções sem nome que podem ser atribuídas a variáveis ou passadas como parâmetros.


```dart
var multiplicar = (int a, int b) => a * b;

void main() {
  print(multiplicar(4, 5)); // Saída: 20
}
```