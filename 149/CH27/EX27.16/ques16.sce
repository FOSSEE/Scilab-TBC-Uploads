//ques16
clc
function yy=f(x,y)
  yy=x^2*(1+y);
endfunction

y3=1
y2=1.233
y1=1.548
y0=1.979

f3=f(1,y3)
f2=f(1.1,y2)
f1=f(1.2,y1)
f0=f(1.3,y0)
disp('using predictor method');
h=0.1
y11=y0+h/24*(55*f0-59*f1+37*f2-9*f3)
disp('y11=');
disp(y11);
x=1.4;
f11=f(1.4,y11);
disp('using corrector method');
y11=y0+h/24*(9*f11+19*f0-5*f1+f2);
disp('y11=');
disp(y11);
f11=f(1.4,y11);
disp('f11=');
disp(f11);
