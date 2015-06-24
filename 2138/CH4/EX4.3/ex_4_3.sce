//Example 4.3 : resistance
clc;
clear;
close;
//given data :
W1=100;// in watt
E=110;// in volts
W2=60;// in watt
I1=W1/E;// current taken by 100 w lamp
I2=W2/E;// current taken by 60W lamp
I=I1-I2;
R=E/I;
disp(R,"resistance,R(ohm) = ")
