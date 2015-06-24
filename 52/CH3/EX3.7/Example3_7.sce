//Example 3.7
//Program to Compute circular convolution of following sequences
//x[n]=[1,2,2,1,0]
//Y[k]=exp(-j*4*pi*k/5).X[k]
clear;
clc ;
close ;
x=[1,2,2,1,0];
X=fft(x,-1);
k=0:1:4;
j=sqrt(-1);
pi=22/7;
H=exp(-j*4*pi*k/5);
Y=H.*X;
//IDFT Computation
y=fft(Y,1);
//Display sequence y[n] in command window
disp(round(y),"y[n]=");
//Plots
n=0:1:4;
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n,round(y),5);
poly1=a.children(1).children (1);
poly1.thickness=2;
xtitle('Plot of sequence y[n]','n','y[n]');