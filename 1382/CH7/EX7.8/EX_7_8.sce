// Example 7.8:tunned capacitance  of tunned circuit
clc;
clear;
close;
fo1=50;//tunned frequency in killo hertz
L1=100;//inductance in micro henry
L2=100;//inductance in micro henry
C= (1/(4*%pi^2*(fo1*10^-6)^2*(L1+L2)*10^-6))*10^-12;//tunned capacitance
disp(C,"tunned capacitance  tunned circuit IN MICRO FARAD IS")
