//Example 11.5: Current
clc;
clear;
close;
//given data :
a=7;//far end voltage in volts
i=125;// in A
r=0.02;// in ohm
l=3;// in km
p=(i*r*l^2)/2;
I=((p-a)/(r*l));//
disp(p,"potential of the track at tha far end of the section in volts is")
disp(I,"Current carried by -ve feeder,I(A) = ")
