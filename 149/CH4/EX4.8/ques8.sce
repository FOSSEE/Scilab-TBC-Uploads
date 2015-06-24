//ques4.1
//clear
//cd SCI
//cd ("..")
//cd ("..")
//exec symbolic.sce 
clc
disp(' y=(sin^-1)x) --sign inverse x ');
syms x
y=(asin(x))^2;
disp('we have to prove (1-x^2)y(n+2)-(2n+1)xy(n+1)-n^2yn ') ;
//n=input('Enter the order of differentiation ");
disp('calculating  yn for various values of n');
for n=1:4
  
  F=(1-x^2)*diff(y,x,n+2)-(2*n+1)*x*diff(y,x,n+1)-(n^2+a^2)*diff(y,x,n);
  disp(n); 
  disp('the expression for yn is ');
  disp(F);
  disp('Which is equal to 0 ');

end
disp('Hence proved');
