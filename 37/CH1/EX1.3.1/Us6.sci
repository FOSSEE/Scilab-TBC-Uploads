//Exercise 1.3
//Example 1.3.1
//Implementing Complex Numbers by structure
function[]=complexmanu(x1,x2,x3,x4)
  
  com1=struct('real',x1,'complex',x2);
  com2=struct('real',x3,'complex',x4);
   //adding 2 numbers
   add=struct('real',x1+x3,'complex',x2+x4);
   disp(add.complex,"+ i",add.real,"Addition result is ");
   //Substract
   sub=struct('real',x1-x3,'complex',x2-x4);
   disp(sub.complex,"+ i",sub.real,"Substraction result is ");
   //Negating 
   neg=struct('real',-x1,'complex',-x2);
   disp(neg.complex,"+ i",neg.real,"Negation result for the first is ");
   //Multiplication
   mul=struct('real',x1*x3-x2*x4,'complex',x2*x3+x4*x1);
    disp(mul.complex,"+ i",mul.real,"Multiplication result is ");
 endfunction
 x1=3;
 x2=5;
 x3=5;
 x4=6;
 complexmanu(x1,x2,x3,x4);