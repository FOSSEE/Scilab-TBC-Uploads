//Graphical//
//Example 12.1.2
//Evaluating power spectrum of a discrete sequence
//Using N-point DFT
clear;
clc;
close;
N =16;  //Number of samples in given sequence
n =0:N-1;
delta_f = [0.06,0.01];//frequency separation
x1 = sin(2*%pi*0.315*n)+cos(2*%pi*(0.315+delta_f(1))*n);
x2 = sin(2*%pi*0.315*n)+cos(2*%pi*(0.315+delta_f(2))*n);
L = [8,16,32,128];
k1 = 0:L(1)-1;
k2 = 0:L(2)-1;
k3 = 0:L(3)-1;
k4 = 0:L(4)-1;
fk1 = k1./L(1);
fk2 = k2./L(2);
fk3 = k3./L(3);
fk4 = k4./L(4);
for i =1:length(fk1)
  Pxx1_fk1(i) = 0;
  Pxx2_fk1(i) = 0;
  for m = 1:N
    Pxx1_fk1(i)=Pxx1_fk1(i)+x1(m)*exp(-sqrt(-1)*2*%pi*(m-1)*fk1(i));
    Pxx2_fk1(i)=Pxx1_fk1(i)+x1(m)*exp(-sqrt(-1)*2*%pi*(m-1)*fk1(i));
  end
  Pxx1_fk1(i) = (Pxx1_fk1(i)^2)/N;
  Pxx2_fk1(i) = (Pxx2_fk1(i)^2)/N;
end
for i =1:length(fk2)
  Pxx1_fk2(i) = 0;
  Pxx2_fk2(i) = 0;
  for m = 1:N
    Pxx1_fk2(i)=Pxx1_fk2(i)+x1(m)*exp(-sqrt(-1)*2*%pi*(m-1)*fk2(i));
    Pxx2_fk2(i)=Pxx1_fk2(i)+x1(m)*exp(-sqrt(-1)*2*%pi*(m-1)*fk2(i));
  end
  Pxx1_fk2(i) = (Pxx1_fk2(i)^2)/N;
  Pxx2_fk2(i) = (Pxx1_fk2(i)^2)/N;
end
for i =1:length(fk3)
  Pxx1_fk3(i) = 0;
  Pxx2_fk3(i) = 0;
  for m = 1:N
    Pxx1_fk3(i) =Pxx1_fk3(i)+x1(m)*exp(-sqrt(-1)*2*%pi*(m-1)*fk3(i));
    Pxx2_fk3(i) =Pxx1_fk3(i)+x1(m)*exp(-sqrt(-1)*2*%pi*(m-1)*fk3(i));
  end
  Pxx1_fk3(i) = (Pxx1_fk3(i)^2)/N;
  Pxx2_fk3(i) = (Pxx1_fk3(i)^2)/N;
end
for i =1:length(fk4)
  Pxx1_fk4(i) = 0;
  Pxx2_fk4(i) = 0;
  for m = 1:N
    Pxx1_fk4(i) =Pxx1_fk4(i)+x1(m)*exp(-sqrt(-1)*2*%pi*(m-1)*fk4(i));
    Pxx2_fk4(i) =Pxx1_fk4(i)+x1(m)*exp(-sqrt(-1)*2*%pi*(m-1)*fk4(i));
  end
  Pxx1_fk4(i) = (Pxx1_fk4(i)^2)/N;
  Pxx2_fk4(i) = (Pxx1_fk4(i)^2)/N;
end
figure
title('for frequency separation = 0.06')
subplot(2,2,1)
plot2d3('gnn',k1,abs(Pxx1_fk1))
subplot(2,2,2)
plot2d3('gnn',k2,abs(Pxx1_fk2))
subplot(2,2,3)
plot2d3('gnn',k3,abs(Pxx1_fk3))
subplot(2,2,4)
plot2d3('gnn',k4,abs(Pxx1_fk4))
figure
title('for frequency separation = 0.01')
subplot(2,2,1)
plot2d3('gnn',k1,abs(Pxx2_fk1))
subplot(2,2,2)
plot2d3('gnn',k2,abs(Pxx2_fk2))
subplot(2,2,3)
plot2d3('gnn',k3,abs(Pxx2_fk3))
subplot(2,2,4)
plot2d3('gnn',k4,abs(Pxx2_fk4))
