// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 2,Example 4")
t1=0;//temperature at ice point
t2=100;//temperature at steam point
t3=50;//temperature of gas
disp("emf equation,e=0.18*t-5.2*10^-4*t^2 in millivolts")
disp("as ice point and steam points are two reference points,so")
disp("at ice point,emf(e1)in mV")
e1=0.18*t1-5.2*10^-4*t1^2
disp("at steam point,emf(e2)in mV")
e2=0.18*t2-5.2*10^-4*t2^2
disp("at gas temperature,emf(e3)in mV")
e3=0.18*t3-5.2*10^-4*t3^2
disp("since emf variation is linear so,temperature(t)in degree celcius at emf of 7.7 mV")
t=((t2-t1)/(e2-e1))*e3
disp("temperature of gas using thermocouple=60.16 degree celcius")
disp("% variation in temperature reading with respect to gas thermometer reading of 50 degree celcius")
variation=((t-t3)/t3)*100
