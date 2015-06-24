// Example 7.32:design wein bridge oscillator
clc;
clear;
close;
R=100;//ASSUME RESSITANCE IN KILO OHMS
fo1=10;//tunned frequency in killo hertz
fo2=100;//tunned frequency in  hertz
C1= (1/(2*%pi*R*10^3*fo1*10^3))*10^9;//tunned capacitance
C2= (1/(2*%pi*R*10^3*fo2))*10^9;//tunned capacitance
disp(C1,"tunned capacitance range of tunned circuit IN NANO FARAD IS")
disp(C2,"tunned capacitance range of tunned circuit IN NANO FARAD IS")
