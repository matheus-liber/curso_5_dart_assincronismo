
class GoodManners{
  String question;
  bool isThisGoodManners = false;
  String kakoBot = 'KakoBOT:\n';
  GoodManners(this.question);

  bool isThisManners(){
    if(question.contains('oi') || 
        question.contains('ola') ||
        question.contains('Oi') ||
        question.contains('Ola') ||
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('bom') ||
        question.contains('boa') ||
        question.contains('dia') ||
        question.contains('tarde') ||
        question.contains('noite')){
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners(){
    if(question.contains('Bom dia') || question.contains('bom dia')){
      print(kakoBot+'Bom dia! Em que posso ajudar?');
    } else if(question.contains('Boa tarde') || question.contains('boa tarde')){
      print(kakoBot+'Boa tarde! Em que posso ajudar?');
    } else if(question.contains('Boa noite') || question.contains('boa noite')){
      print(kakoBot+'Boa noite! Em que posso ajudar?');
    } else if(question.contains('Oi') || question.contains('oi')){
      print(kakoBot+'Oi! ^^\nEm que posso ajudar?');
    } else if(question.contains('Obrigado') || question.contains('obrigado')){
      print(kakoBot+'Fique a vontade');
    }
  }

}