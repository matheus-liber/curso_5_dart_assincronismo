
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
}