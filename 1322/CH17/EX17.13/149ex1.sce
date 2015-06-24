
//x^2-6*x+8<0
clear;
clc;
close;
x=poly(0,'x');
y=x^2-6*x+8;
//the product is negative only if either one of the factors is negative
f=factors(y);//these factors are <0
//f(1)>0 and f(2)<0 \n \t or \t \n f(1)<0 and f(2)>0
  x=string(-2:7);//by number line method,
n=string('<'+strcat(x,'~~~')+'>') //-2 to 7 no. line
n1='<';n2='';
    for x=-2:2
      n1=n1+'----';
    end
       for x=2:8
      n2=n2+'+++';
    end
    mprintf(n1+n2+'>'+'     '+'(x-2)'+'\n')    
n1='<';n2='';    
      for y=-2:4
     n1=n1+'----';
    end
       for y=4:8
      n2=n2+'+++';
    end
    mprintf(n1+n2+'>'+'     '+'(x-4)'+'\n') 
   
// from diagram, (x-2) is +ve when x>2 & -ve when x<2 by using + ans - signs. same in the case of (x-4)
    mprintf("\n solution of x^2-6*x+8<0 is \n 2<x<4")
     
