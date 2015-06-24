//Example 3.13
//Program to Compute circular convolution of following sequences
//x1[n]=[1,-1,-2,3,-1]
//x2[n]=[1,2,3]
clear;
clc ;
close ;
x1=[1,-1,-2,3,-1];
x2=[1,2,3];
//Loop for zero padding the smaller sequence out of the two
n1=length(x1);
n2=length(x2);
n3=n2-n1;
if (n3>=0) then
 x1=[x1,zeros(1,n3)];    
else
 x2=[x2,zeros(1,-n3)];
end    
//DFT Computation
X1=fft(x1,-1);
X2=fft(x2,-1);
Y=X1.*X2;
//IDFT Computation
y=fft(Y,1);
//Display sequence y[n] in command window
disp(y,"y[n]=");