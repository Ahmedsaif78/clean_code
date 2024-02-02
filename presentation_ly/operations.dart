class operations {
   String result ='0';
  String finlresult ='0';
  double num1=0.0;
  double num2=0.0;
  String op='';
   buttonPressed(String btV) {
    
    if(btV=='AC'){
      finlresult='';
      num1=0.0;
      num2=0.0;op='';}
    else if(btV=='/'||btV=='+'||btV=='-'||btV=='*'){
      num1=double.parse(result);
      op=btV;
      finlresult='0';
      result=result+btV;
    }
    else if(btV=='.'){
      if(finlresult.contains('.')){}
      else finlresult+=btV;
    }
    else if(btV=='%'){
      num1=double.parse(result)/100;
finlresult=num1.toString();    }
    else if(btV=='+/-'){
      if(result.toString().contains('-')){
        result.toString().substring(1);
        finlresult=result.toString();
      }
      else {
        result='-'+result;
        finlresult=result.toString();
      }
    }
    else if(btV=='='){
      num2=double.parse(result);
      if(op=='+')
        finlresult=(num1+num2).toString();
      if(op=='-')
        finlresult=(num1-num2).toString();
        if(op=='*')
          finlresult=(num1*num2).toString();
      if(op=='/')
        finlresult=(num1/num2).toString();
    }
    else {finlresult+=btV;}   
  }
}
  