//Scilab Code for Example 3.17 of Signals and systems by
//P.Ramakrishna Rao
//CTFS coefficients of a periodic signal 
//x(wt) = Asin wt, 0<wt<pi
clear;
close;
clc;
A=3.14;
T =%pi;
T1 = T/2;
t = 0:0.01:T1;
Wo = 2*%pi/T;
xt =A*sin(Wo*t);
//
for k =0:6
  C(k+1,:) = exp(-sqrt(-1)*Wo*t.*k);
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
//c.data_bounds=[-2,0;2,2];
plot2d(t,xt,5)
poly1 = c.children(1).children(1);
poly1.thickness = 3; 
title('x(t)')
xlabel('t')
figure(1);
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d3('gnn',k,abs(ck))
poly1 = c.children(1).children(1);
poly1.thickness = 3; 
title('|ck|')
xlabel('k')
