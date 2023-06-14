//Exercício 1

class Reload{
  String kakoBot = 'KakoBOT:\n';
  bool isMustReload = false;
  String pedidoReload;
  Reload(this.pedidoReload);

  mustReload(){
    if(pedidoReload.contains('Recarregue') ||
        pedidoReload.contains('recarregue') ||
        pedidoReload.contains('Refresh') ||
        pedidoReload.contains('refresh')) {
      isMustReload = true;
    }
    return isMustReload;
  }

  reloadKakobot() async{
    print(kakoBot+'Recarregando o sistema!');
    await Future.delayed(Duration(seconds: 1));
    print('...');
    await Future.delayed(Duration(seconds: 1));
    print('...');
    await Future.delayed(Duration(seconds: 1));
    print('...');
    await Future.delayed(Duration(seconds: 1));
    print(kakoBot+'Sistema regarregado!');
  }
}