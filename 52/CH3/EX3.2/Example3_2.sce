//Example 3.2
//Program to Compute the DFT of a Sequence x[n]=1, 0<=n<=2; and 0 otherwise
//for N=4 and N=8. Plot Magnitude and phase plots of each.
clear;
clc ;
close ;
//N=4
x1 = [1,1,1,0];
//DFT Computation
X1 = fft (x1 , -1);
//N=8
x2 = [1,1,1,0,0,0,0,0];
//DFT Computation
X2 = fft (x2 , -1);
//Display sequence X1[k] and X2[k] in command window
disp(X1,"X1[k]=");
disp(X2,"X2[k]=");
//Plots for N=4
n1=0:1:3;
subplot(2,2,1);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n1,abs(X1),2);
poly1=a.children(1).children (1);
poly1.thickness=2;
xtitle('N=4','k','|X1(k)|');
subplot(2,2,2);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n1,atan(imag(X1),real(X1)),5);
poly1=a.children(1).children (1);
poly1.thickness=2;
xtitle('N=4','k','<X1(k)');
//Plots for N=8
n2=0:1:7;
subplot(2,2,3);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n2,abs(X2),2);
poly1=a.children(1).children (1);
poly1.thickness=2;
xtitle('N=8','k','|X2(k)|');
subplot(2,2,4);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n2,atan(imag(X2),real(X2)),5);
poly1=a.children(1).children (1);
poly1.thickness=2;
xtitle('N=8','k','<X2(k)');