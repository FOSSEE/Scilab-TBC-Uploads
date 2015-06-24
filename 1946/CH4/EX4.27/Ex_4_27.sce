// Example 4.27;//Maximum bit rate
clc;
clear;
close;
L=10;//Length in Km
Dt2=600*10^-12;//Birefringent in second per kilometer
B=(0.9)/(Dt2*L*10^3);//
Btm= round((B/0.55)*10^-3);// maximum bit rate in kilo bit per second
disp(Btm,"maximum bit rate in kilo bit per second")
