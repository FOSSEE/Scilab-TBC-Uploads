//example 14.1
clc;
clear;
close; 
vdc = input('Enter the value of DC voltage Vdc in volts :');
r = input('Enter the value of resistace in K ohms :');
v = input(' Enter the value of voltage across diode in volts :');

i = (vdc-v)/r ;
format('v',4);
if(i>0)  // checking whether the diode is forward or reverse biased by checking current 
    disp('The diode is in forward bias');
    disp('The diode current in mA is :');
    disp(i);
else
    disp('The diode is in Reverse bias');
    disp('The diode current in mA is : 0.0');
end;