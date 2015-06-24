//ques4.1
//clear
//cd SCI
//cd ("..")
//cd ("..")
//exec symbolic.sce 
clc
disp(' y=e^(a(sin^-1)x)) --sign inverse x ');
syms x a
y=%e^(a*(asin(x)));
disp('we have to prove (1-x^2)y(n+2)-(2n+1)xy(n+1)-(n^2+a^2)yn ') ;
//n=input('Enter the order of differentiation ");
disp('calculating  yn for various values of n');
for n=1:4
  
  //yn=diff(F,x,n)
  F=(1-x^2)*diff(y,x,n+2)-(2*n+1)*x*diff(y,x,n+1)-(n^2+a^2)*diff(y,x,n);
  disp(n); 
  disp('the expression for yn is ');
  disp(F);
  disp('Which is equal to 0 ');

end
disp('Hence proved');
