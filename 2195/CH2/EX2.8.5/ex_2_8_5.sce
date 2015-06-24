//Example 2.8.5 // limiting error
clc;
clear;
close;
//given data :
del_A=2.5;// may be +ve or-ve in %
As=400;
FSD=600;// in volts
del_A1=(del_A/100)*600;
disp(del_A1,"del_A1 (V)=± ")
e=(del_A1/As)*100;
disp(e,"limiting error,e(%) = ")
