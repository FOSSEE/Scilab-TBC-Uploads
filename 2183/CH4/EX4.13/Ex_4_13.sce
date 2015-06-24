// Example 4.13;//Maximum bit rate
clc;
clear;
close;
L=20;//Length in km
Dt2=300*10^-12;//Birefringent in second per kilometer
B=(0.9)/(Dt2*L*10^3);//
Btm= round((B/0.55)*10^-3);// maximum bit rate in kilo bit per second
disp(Btm,"maximum bit rate in kilo bit per second")
