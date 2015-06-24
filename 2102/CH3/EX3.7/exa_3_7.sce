// Exa 3.7
clc;
clear;
close;
// Given data
n=2;
V_T=26;// in mV
Io= 30;// in mA
// (i) when
I_D= 0.1;// in mA
V_D= n*V_T*log(I_D/Io);// in mV
disp(V_D,"(i) When I_D is 0.1 mA, The junction forward-bias voltage in mV is : ")
// (ii) when
I_D= 10;// in mA
V_D= n*V_T*log(I_D/Io);// in mV
disp(V_D,"(ii) When I_D is 10 mA, The junction forward-bias voltage in mV is : ")

// Note: There is calculation error in the book so answer in the book is wrong.
