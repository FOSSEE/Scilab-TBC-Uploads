//Exa 4.8
clc;
clear;
close;
// Given data
f=10;// in kHz
f=f*10^3;// in Hz
dcGain= 10;
fa= f/10;// in Hz
R1= 10;// in kΩ
// Formula dcGain= RF/R1
RF= R1*dcGain;// in kΩ
RF=RF*10^3;// in Ω
R1= R1*10^3;// in Ω
// Formula fa= 1/(2*%pi*RF*CF)
CF= 1/(2*%pi*RF*fa);// in F
CF=CF*10^9;// in nF
Rcomp= R1*RF/(R1+RF);// in Ω
disp(CF,"The value of CF in nF is : ")
disp(Rcomp*10^-3,"The value of Rcomp in kΩ is : ");

// Note: There is calculation error in evaluating the value of CF in the book. So The value of CF in the book is wrong.
