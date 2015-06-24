//Example 2.2 // minimum and maximum number of reflections
clc;
clear;
close;
format('v',5)
n1=1.5;//core refrative index
n2=1.48;//claddin refractive index
a=100/2;//radius in micro meter
na=1;//air refrative index
NA=sqrt(n1^2-n2^2);//numerical aperture
am=(asind(NA));//
tm=asind(NA/n1);//
tc=asind(n2/n1);//
L=((a*10^-6)/(tand(tm)));//length in meter
x=(1/(2*L));//maximum number of reflections per meter
disp("all other rays will suffer reflections between these two extremes of "+string(0)+" and "+string(x)+" m^-1")
//answer is wrong in the textbook
