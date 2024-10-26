# Estudo sobre a linguagem Dart, base para o desenvolvimento híbrido com Flutter.

## Trabalhando com Variáveis e Tipos de Dados

### Variaveis

#### O que é uma variável?

Variável é um espaço nomeado na memoria de um programa que é responsavel por armazenar valores. Existem diferentes tipos de variáveis onde você pode manter diferentes tipos de valores. Nomes de variáveis são chamados de identificadores.

#### Regras para nomeclaturas
Ao declarar uma variável, precisamos considerar algumas regras ao criarmos uma nomeclarura para ela:
- Identificadores não podem ser palavras-chave.
- Identificadores podem conter letras e números.
- Os identificadores não podem conter espaços e caracteres especiais, exceto o sublinhado (_) e o cifrão ($).
- Nomes de variáveis não podem começar com um número.
 
#### Convenção de nomenclatura para variáveis em Dart
É um bom hábito seguir a convenção de nomenclatura. Em Dart, o nome da variável deve começar com letras minúsculas, e a primeira letra de cada segunda palavra será maiúscula, como numero1, nomeCompleto, ehCasado, etc. Tecnicamente, essa convenção de nomenclatura é chamada **lowerCamelCase**.




#### Tipos de variáveis

**A palavra-chave Var:**
- Declaração explícita
- Convencionalmente, a palavra-chave var é usada para declarar variáveis locais dentro de funções ou métodos (recomendado pelo guia de estilo Dart, já que o compilador conhece o tipo de qualquer maneira).
- Ao declarar variáveis ou propriedades em uma classe, o tipo é especificado.
  
```dart
// Aqui está uma variável time contendo o valor Corinthians.
var time = "Corinthians";
```

**Tipo Dinâmico:**
- Uma palavra-chave usada para variáveis que podem ter vários tipos.
- Não é geralmente recomendada, mas pode ser muito útil às vezes.
- É usada quando é difícil saber qual será o tipo de uma variável, especialmente ao trabalhar com Flutter ou JSON.

```dart
void main() {
  var a;
  dynamic b;
}
```

**Variáveis Nullables:**
- A segurança nula impede que o desenvolvedor faça referência a valores nulos. 
- No Dart, deve ser claramente indicado se uma variável pode ser nula.

```dart
void main() {
  String? nome = 'Bruno';
  nome = null;
  nome?.isNotEmpty; // Isso verifica se o valor existe antes de prosseguir com as operações a seguir. Equivalente ao abaixo.
  if (nome != null) {
    nome.isNotEmpty;
  }
}
```

**Variáveis Finais**
- Para definir uma variável que não pode ser modificada, use `final` em vez de `var`. É similar a `const` em JavaScript ou TypeScript.

```dart
void main() {
  final a = 'Bruno';
  final String b = 'Bruno';
}
```

**Variáveis tardias**
- `late` é um modificador que pode ser adicionado antes de final ou var. 
- `late` permite declarar uma variável sem dados iniciais.

```dart
void main() {
  late final String nome;
  // faça algo, consulte uma API
  nome = 'Bruno';
}
````

**Variáveis constantes**
- `const` em Dart é diferente de JavaScript ou TypeScript. Em JavaScript ou TypeScript, `const` é similar a `final` em Dart.
- No Dart, `const` é usado para criar constantes de tempo de compilação. 
- É usado para valores que são conhecidos em tempo de compilação. 
- Esses valores são conhecidos antes de carregar o aplicativo na app store.


```dart
void main() {
  const nome = 'Bruno';
  const precoMaximo = 120;
}
```

#### Criação de uma variável
Uma variável deve ser declarada antes de ser usada. Em Dart utilizaos a palavra-chave var antes de darmos um nome para a variável.

```dart
// Aqui está uma variável time contendo o valor Corinthians.
var time = "Corinthians";
```

Ao utilizarmos a  palavra-chave *Var*, não temos a necessidade de especificar o tipo da variável e em dado momento que precisaremos atualizar o valor dessa variável, ele deve corresponder ao tipo original da variável.

#### Variável com tipo de dado atribuido
Dart suporta verificação de tipo prefixando ao nome da variável com o tipo de dado. A verificação de tipo garante que uma variável contenha apenas dados específicos de um tipo de dado.

`````dart
// Aqui está uma variável nome contendo o valor Bruno, com o tipo de dado String.
String nome = 'Bruno'; 

// Aqui está uma variável idade contendo o valor 31, com o tipo de dado int.
int idade = 31;
`````

#### Variável com valor diferente do tipo de dado atribuido
Dado que ao declarar um tipo de dado String e atribuir um int para o valor da variável, nos deparariamos com um erro

`````dart
String nome = 31; 
`````

Saída
> Warning: A value of type 'String' cannot be assigned to a variable of type 'int' 

O erro acontece pelo fato do valor atribuído à variável não corresponder ao tipo de dado declarado na variável.


#### Variável não inicializada

Todas as variáveis não inicializadas possui um valor inicial de nulo. 
Isso ocorre porque o Dart considera todos os valores como objetos.

````dart
void main() { 
   int num; 
   print(num); 
}
`````


Saída
>Null