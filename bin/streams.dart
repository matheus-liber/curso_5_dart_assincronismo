import 'dart:async';

void main() async {

  Stream myStream(int interval, [int? maxCount]) async*{

    int i = 1;
    while(i != maxCount){
      print('Counting: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("cabô Jéssica");
  }

  //myStream(1, 10);

  var matheusStream = myStream(1).asBroadcastStream();

  StreamSubscription mySubscriber = matheusStream.listen((event) { 
    if(event.isEven){
      print('número par');
    }
  }, onError: (e) {
    print('errou');
  }, onDone: () {
    print('The subscriber is gone');
  });

  matheusStream.map((event) => 'Subscriber 2 watching').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('pausa');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('volta');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('cancela');

  print('agora acabô pra mim');
}