//EXAMPLE 5.4
//DETERMINE IDFT OF GIVEN SEQUENCE
clc;
clear;
K = input("   value of K   ");
disp('input M > K');
M = input("   value of M   ");
k1 = 0:K-1;
V1 = k1./K;//DFT
k=0:M-1;

N = length(V1);
V = [V1,zeros(1,M-N)];
v = dft(V,1);//IDFT

clf();
subplot(1,2,1)

a = gca();
plot2d3(k,real(v),2);
plot(k,real(v),'r.');
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 2;
xtitle('real part','N','v');

subplot(1,2,2)
a = gca();
plot2d3(k,imag(v),2)
plot(k,imag(v),'r.');
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 2;
xtitle('imaginary part','N','v');
v = disp(v);
