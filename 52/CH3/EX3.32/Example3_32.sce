//Example 3.32
//Program to plot the result of the given sequence
//X[k]=[1,2,2,1,0,2,1,2]
//y[n]=x[n/2] for n=even,0 for n=odd 
clear;
clc ;
close ;
X=[1,2,2,1,0,2,1,2];
x = fft (X , 1);
y=[x(1),0,x(2),0,x(3),0,x(4),0,x(5),0,x(6),0,x(7),0,x(8),0];
Y = fft (y , -1);
//Display sequence Y[k] and in command window
disp(Y,"Y[k]=");
//Plotting the sequence Y[k]
k=0:1:15;
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(k,Y,2);
poly1=a.children(1).children (1);
poly1.thickness=2;
xtitle('Plot of Y(k)','k','Y(k)');