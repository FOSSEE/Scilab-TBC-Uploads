clc;
clear;
b1=10;//From plot
b2=31;//From plot
b3=68;//From plot
b4=100;//From plot
b5=100;//From plot
b6=100;//From plot
//Case:1
B1=0.86+5.16+16.72+28.9+32.3+16.7;
B3=2.36+10.32+16.04+0-23.6-16.7;
B5=3.23+5.16-16.04-28.9+8.6+16.7;
B7=3.23-5.16-16.04+28.9+8.6-16.7;
disp('To find the harmonic components ,mean gap density ,rms value:')
disp(B7,B5,B3,B1,'The harmonic components are:')
B8=((2/%pi)*(B1+((1/3)*B3)+((1/5)*B5)+((1/7)*B7)));
disp(B8,'The mean gap density is :')
B9=(((1/2)*(((B1)^2)+((B3)^2)+((B5)^2)+((B7)^2)))^(1/2));
disp(B9,'The rms value is:')
