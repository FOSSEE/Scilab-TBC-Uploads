//clear//
//Example3.6: Time Shift Property of CTFS
clear;
close;
clc;
T =4;
T1 = T/2;
t = 0:T1/100:T1;
Wo = 2*%pi/T;
gt =(1/2)*ones(1,length(t));
a(1)=0; //k=0, ak =0
d(1)=0;
for k =1:5
  a(k+1) = (sin(%pi*k/2)/(k*%pi));
  if(abs(a(k+1))<=0.01)
    a(k+1)=0;
  end
   d(k+1) = a(k+1)*exp(-sqrt(-1)*k*%pi/2);
end
k = 0:5
disp('Fourier Series Coefficients of Square Wave')
a
disp('Fourier Series Coefficients of g(t)=x(t-1)-0.5')
d
//
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-1,-2;1,4];
plot2d([-t($:-1:1),t(1:$)],[-gt,gt],5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('g(t)')
xlabel('                                                       t')
