//Example 9.3
//Program to Calculate Gain in dB at Cutoff Frequencies and 
//Plot Frequency Response Curve
clear;
clc ;
close ;
//Given Data
A=100;
f1=400;
f2=25*10^3;
f3=80;
f4=40*10^3;
//Calculation
Adb=20*log10(A);
Adbc=Adb-3; //Lower by 3dB
//Displaying The Results in Command Window
printf("\n\t The Gain at Cutoff Frequencies is, Adb (at Cutoff Frequencies) = %f dB",Adbc);
//Plotting the Frequency Response Curve
x = [f3 f1 f2 f4];
x1= [1 1 1 1];
y = [Adbc Adb Adb Adbc];
gainplot(y,x1);
a = gca();
a.y_location = 'left';
a.x_location = 'bottom';
a.x_label.text = '                    f3                         f1                Frequency(Hz)                          f2     f4';
a.y_label.text = '                                             AdB                                         37';
a.title.text = 'FREQUENCY RESPONSE CURVE';
plot2d(x,y);
r= [37 37];
q = [10 100000];
plot2d2(q,r,6);
r2= [37 40 40 37];
q2 = [f3 f1 f2 f4];
plot2d3(q2,r2,6);