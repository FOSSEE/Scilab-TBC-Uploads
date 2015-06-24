//clear//
//Example3.8:Fourier Series Representation of Periodic Impulse Train
clear;
clc;
close;
T =4;
T1 = T/4;
t = [-T,0,T];
xt = [1,1,1]; //Generation of Periodic train of Impulses
t1 = -T1:T1/100:T1;
gt = ones(1,length(t1));//Generation of periodic square wave
t2 = [-T1,0,T1];
qt = [1,0,-1];//Derivative of periodic square wave   
Wo = 2*%pi/T;
ak = 1/T;
b(1) = 0;
c(1) = 2*T1/T;
for k =1:5
  b(k+1) = ak*(exp(sqrt(-1)*k*Wo*T1)-exp(-sqrt(-1)*k*Wo*T1));
  if(abs(b(k+1))<=0.1)
    b(k+1) =0;
  end
  c(k+1) = b(k+1)/(sqrt(-1)*k*Wo);
  if(abs(c(k+1))<=0.1)
    c(k+1) =0;
  end
end
k = 0:5
disp('Fourier Series Coefficients of periodic Square Wave')
disp(b)
disp('Fourier Series Coefficients of derivative of periodic square wave')
disp(c)
//Plotting the periodic train of impulses
figure
subplot(3,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-6,0;6,2];
plot2d3('gnn',t,xt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('x(t)')
//Plotting the periodic square waveform
subplot(3,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-6,0;6,2];
plot2d(t1,gt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d(T+t1,gt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d(-T+t1,gt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('g(t)')
//Plotting the periodic square waveform
subplot(3,1,3)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-6,-2;6,2];
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d3('gnn',t2,qt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d3('gnn',T+t2,qt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d3('gnn',-T+t2,qt,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('q(t)')
