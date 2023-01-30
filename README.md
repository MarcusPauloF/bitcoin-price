# bitcoin_price

Este é um código para uma tela de aplicativo Flutter. A tela exibe a imagem de um Bitcoin e um preço inicial de "R$0", que pode ser atualizado pressionando o botão "Atualizar". O preço é recuperado da API blockchain.info ao chamar o método _recuperarPreco(). A resposta da API é convertida em um objeto ModalPreco e o valor de compra é atribuído a _preco, que é exibido na tela. O ajuste de estado é feito chamando setState para atualizar a tela com o novo preço.
