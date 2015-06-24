//example 14.2
clc;
clear;
close; 
vdc = input('Enter the value of DC voltage Vdc in volts :');
r = input('Enter the value of resistace in K ohms :');
//v = input(' Enter the value of voltage across diode in volts:');
v= 1.6;
i = (vdc-v)/r ; /// calculating the current 
    disp('The diode current in mA is :');
    disp(i);
