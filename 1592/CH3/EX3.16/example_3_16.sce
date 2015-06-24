//Scilab Code for Example 3.16 of Signals and systems by
//P.Ramakrishna Rao
//A=%pi or 3.14
clear;
clc;
//Trignometric Fourier Coefficients
for n=0:5
a(n+1)=integrate('t*cos(2*%pi*n*t)','t',0,1);
end
for n=0:5
b(n+1)=integrate('t*sin(2*%pi*n*t)','t',0,1);
end
disp(%pi*a(1),"an(a0)")
disp("an(a1-->a5)")
for n=1:5
disp(2*a(n+1)*%pi)
end
disp("bn(b1-->b5)")
for n=1:5
disp(2*%pi*b(n+1))
end
//CTFS coefficients of a periodic signal 
//x(t) =t
t = 0:0.01:1;
xt =2*%pi*t;
//
for k =0:6
  C(k+1,:) = exp(-sqrt(-1)*2*%pi*t*k);
  c(k+1) = xt*C(k+1,:)'/length(t);
  if(abs(c(k+1))<=0.01) 
    c(k+1)=0;
  end
end
c =c';
c_conj = real(c(:))-sqrt(-1)*imag(c(:));
ck = [c_conj($:-1:1)',c(2:$)];
k = 0:6;
k = [-k($:-1:1),k(2:$)];
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d3('gnn',k,abs(ck))
poly1 = c.children(1).children(1);
poly1.thickness = 3; 
title('|ck|')
xlabel('k')
