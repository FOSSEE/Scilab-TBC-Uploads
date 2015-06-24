//clear//
//Example3.5:CTFS coefficients of a periodic signal 
//x(t) = 1, |t|<T1, and 0, T1<|t|<T/2
clear;
close;
clc;
T =4;
T1 = T/4;
t = -T1:T1/100:T1;
Wo = 2*%pi/T;
xt =ones(1,length(t));
//
for k =0:5
  C(k+1,:) = exp(-sqrt(-1)*Wo*t.*k);
  a(k+1) = xt*C(k+1,:)'/length(t);
  if(abs(a(k+1))<=0.1) 
    a(k+1)=0;
  end
end
a =a';
a_conj = real(a(:))-sqrt(-1)*imag(a(:));
ak = [a_conj($:-1:1)',a(2:$)];
k = 0:5;
k = [-k($:-1:1),k(2:$)];
Spectrum_ak = (1/2)*real(ak);
//
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-2,0;2,2];
plot2d(t,xt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('x(t)')
xlabel('                                                       t')
//
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',k,Spectrum_ak,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('abs(ak)')
xlabel('                                                       k')
