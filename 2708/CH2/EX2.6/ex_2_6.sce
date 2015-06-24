//Example 2.6 // minimum number of lines in grating
clc;
clear;
//given data :
w1=589D-9;//wavelength of one sodium line
w2=5896D-10//wavelength of second line
dw=w2-w1;//change of wavelength
w=(w1+w2)/2;// mid wavelength
n=1;//order of spectrum
N=w/(n*dw);//number of lines in grating
N=floor(N);//no. should be integer
disp(N,"number of lines in grating")
