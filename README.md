# bitcoin_price

Este é um código para uma tela de aplicativo Flutter. A tela exibe a imagem de um Bitcoin e um preço inicial de "R$0", que pode ser atualizado pressionando o botão "Atualizar". O preço é recuperado da API blockchain.info ao chamar o método _recuperarPreco(). A resposta da API é convertida em um objeto ModalPreco e o valor de compra é atribuído a _preco, que é exibido na tela. O ajuste de estado é feito chamando setState para atualizar a tela com o novo preço.

# Técnicas Usadas

Uso da biblioteca Dio para fazer requisições HTTP à API blockchain.info.

Uso da classe StatefulWidget para criar a tela e acompanhar as alterações de estado.

Uso da classe ModalPreco para representar o modelo de dados retornado pela API.

Uso de Future e async/await para garantir que a chamada à API seja assíncrona.

Uso do método setState para atualizar o estado da tela com o novo preço.

Uso do padrão Model-View-Controller para separar a lógica da interface do usuário.

Uso de Widgets Flutter para construir a interface do usuário, incluindo Image, Text, TextButton e Scaffold.
