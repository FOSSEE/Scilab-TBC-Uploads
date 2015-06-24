// Example 7.2:tunned capacitance range of tunned circuit
clc;
clear;
close;
L=100;//INDUCTANCE of tunned circuit in micro henry
fo1=500;//tunned frequency in killo hertz
fo2=1500;//tunned frequency in killo hertz
C1= (1/(4*%pi^2*(fo1*10^-6)^2*L*10^-6))*10^-6;//tunned capacitance
C2= (1/(4*%pi^2*(fo2*10^-6)^2*L*10^-6))*10^-6;//tunned capacitance
disp(C1,"-",C2,"tunned capacitance range of tunned circuit IN PICO FARAD IS")
