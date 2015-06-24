//clear//
//Example3.7:Derivative Property of CTFS
clear;
clc;
close;
T =4;
T1 = T/2;
t = 0:T1/100:T1;
xt = [t($:-1:1) t]/T1;
gt =(1/2)*ones(1,length(t));
e(1) = 1/2; //k =0, e0 = 1/2
for k =1:5
  a(k+1) = (sin(%pi*k/2)/(k*%pi));
  if(abs(a(k+1))<=0.01)
    a(k+1)=0;
  end
  d(k+1) = a(k+1)*exp(-sqrt(-1)*k*%pi/2);
  e(k+1) = 2*d(k+1)/(sqrt(-1)*k*%pi);
end
k = 0:5
disp('Fourier Series Coefficients of Square Wave')
a
disp('Fourier Series Coefficients of g(t)=x(t-1)-0.5')
d
disp('Fourier Series Coefficients of Triangular Wave')
e
//Plotting the time shifted square waveform
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-1,-2;1,2];
plot2d([-t($:-1:1),t(1:$)],[-gt,gt],5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('g(t)')
xlabel('                                                                          t')
//Plotting the Triangular waveform
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-1,0;1,2];
plot2d([-t($:-1:1),t(1:$)],xt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('x(t)')
xlabel('t')
