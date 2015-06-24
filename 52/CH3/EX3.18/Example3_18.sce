//Example 3.18
//Program to Compute output responce of following sequences
//x[n]=[1,2,3,1]
//h[n]=[1,1,1]
//(1)Linear Convolution
//(2)Circular Convolution
//(3)Circular Convolution with zero padding
clear;
clc ;
close ;
x=[1,2,3,1];
h=[1,1,1];
//(1)Linear Convolution Computation
ylinear=convol (x,h);
//Display Linear Convoluted Sequence y[n] in command window
disp(ylinear,"ylinear[n]=");
//(2)Circular Convolution Computation
//Now zero padding in h[n] sequence to make length of x[n] and h[n] equal 
h1=[h,zeros(1,1)];
//Now Performing Circular Convolution by DFT method
X=fft(x,-1);
H=fft(h1,-1);
Y=X.*H;
ycircular=fft(Y,1);
//Display Circular Convoluted Sequence y[n] in command window
disp(ycircular,"ycircular[n]=");
//(3)Circular Convolution Computation with zero Padding
x2=[x,zeros(1,2)];
h2=[h,zeros(1,3)];
//Now Performing Circular Convolution by DFT method
X2=fft(x2,-1);
H2=fft(h2,-1);
Y2=X2.*H2;
ycircularp=fft(Y2,1);
//Display Circular Convoluted Sequence with zero Padding y[n] in command window
disp(ycircularp,"ycircularp[n]=");