//ques1
clc
disp('solution of the given linear differential equation is given by : ');
syms c1 c2 x
m=poly(0,'m');
f=m^2+m-2;
r=roots(f);
disp(r);
y=0;
//for i=1:length(r)
  //syms c(i)
  //y=y+c(i)*exp(r(i)*x);
  //end
  y=c1*exp(r(1)*x)+c2*exp(r(2)*x);
  disp('y=');
  disp(y);
