clc
disp(' y^(1/m)+y^-(1/m)=2x  ');
disp(' OR y^(2/m)-2xy^(1/m)+1');
disp('OR y=[x+(x^2-1)]^m and y=[x-(x^2-1)]^m ');

syms x m
disp('For y=[x+(x^2-1)]^m ');
 y=(x+(x^2-1))^m
disp('we have to prove (x^2-1)y(n+2)+(2n+1)xy(n+1)+(n^2-m^2)yn ') ;
//n=input('Enter the order of differentiation ");
disp('calculating  yn for various values of n');
for n=1:4
  
  //yn=diff(F,x,n)
  F=(x^2-1)*diff(y,x,n+2)+(2*n+1)*x*diff(y,x,n+1)+(n^2-m^2)*diff(y,x,n);
  disp(n); 
  disp('the expression for yn is ');
  disp(F);
  disp('Which is equal to 0 ');

end
disp('For y=[x-(x^2-1)]^m ');
 y=(x-(x^2-1))^m
disp('we have to prove (x^2-1)y(n+2)+(2n+1)xy(n+1)+(n^2-m^2)yn ') ;
//n=input('Enter the order of differentiation ");
disp('calculating  yn for various values of n');
for n=1:4
  
  //yn=diff(F,x,n)
  F=(x^2-1)*diff(y,x,n+2)+(2*n+1)*x*diff(y,x,n+1)+(n^2-m^2)*diff(y,x,n);
  disp(n); 
  disp('the expression for yn is ');
  disp(F);
  disp('Which is equal to 0 ');

end
disp('Hence proved');
