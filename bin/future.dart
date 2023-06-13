void main(){

  Future myFuture = Future(() {
    print('Going back to the future');
    return 21;
  }).then((value) => print(value));
  
  Future<int> myFutureFunc() async{
    await Future.delayed(Duration(seconds: 5));
    return 12;
  }

  // myFutureFunc()
  // .then((value) => print(value))
  // .onError((error, stackTrace) => print(error))
  // .whenComplete(() => print('terminou'));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try{
      if(a>b){
        throw Exception();
      }
      print('Tá funcionando');
      await Future.delayed(Duration(seconds: 5));
      return 42;
    }catch(e){
      print('Deu errado $e');
      return 42;
    }finally{
      print('acabou');
    }
  }

  myFutureErrorFunc(2, 1).then((value) => print(value));

  print('Done with main');
}