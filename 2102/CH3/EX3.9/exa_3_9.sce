// Exa 3.9
clc;
clear;
close;
// Given data
nita= 2;
T1= 25;// in °C
T2= 150;// in °C
k= 8.62*10^-5;
V_T150= k*(T2+273);// in V
V_T25= k*(T1+273);// in V
V= 0.4;// in V
// Io150= Io25*2^(T2-T1) 
Io150byIo25= 2^((T2-T1)/10);
I150byI25= Io150byIo25 *( %e^(V/(nita*V_T150))-1)/( %e^(V/(nita*V_T25))-1);
disp(I150byI25,"The factor by which the current will get multiplied when its temperature is raised from 25°C to 150°C is : ")

// Note : There is some difference between coding and the answer of the book because in the book the values of (  Io150byIo25, V_T150, V_T25 ) 
// are putted (respectively 5800, 0.0364, 0.026) whereas the accurate values of these are 
// 5792.6188 , 0.0364626 and 0.0256876

