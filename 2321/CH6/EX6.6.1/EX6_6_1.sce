//Example No. 6.6.1
clc;
clear;
close;
format('v',5);
n=80;//(no. of elements)
N=1;//for first null
//d=lambda/2;(spacing)
dBYlambda=1/2;//(spacing/wavelength)
fi01=acosd(N/n/dBYlambda);//degree(Angle)
Null_1st=(%pi/2*180/%pi)-fi01;//degree(First Null)
disp(Null_1st,"Location of 1st null from maxima in degree : ");
