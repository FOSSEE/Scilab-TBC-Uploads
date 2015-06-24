// Example 7.6:tunned capacitance and inductance of tunned circuit
clc;
clear;
close;
fo=500;//tunned frequency in killo hertz
LC= (1/(4*%pi^2*(fo*10^-3)^2));//
L3=1;//assume inductance 
C=LC/(L3*10^-3);//capacitance in pico farad
C1= 2*C;//
C2=C1;
disp(L3,"inductance in milli henry is")
disp(C1,"tunned capacitance C1 of tunned circuit IN PICO FARAD IS")
disp(C2,"tunned capacitance C2 of tunned circuit IN PICO FARAD IS")

