clc;
m=0.8;     //mass of water in kg
c=4185;    //specific heat in J/kg.celcius
delT=100-20;  //change in temperature in celcius
Q=m*c*delT;  //calculating heat required in Joule
P=10^3;      //Power in J/sec
t=Q/P;      //calculating time using P=(Q/t)
disp(t,"Time required to raise temperature to 100 degree celcius in second = ");    //displaying result.
disp(t/60,"Time in minutes = ");   //displaying result.