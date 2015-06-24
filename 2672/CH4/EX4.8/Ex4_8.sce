//Example 4_8
clc;
clear;
close;
format('v',6)
//given data : 
n0=6*10^17;//cm^-3
Nc=4.45*10^17;//cm^-3
kBT=0.026;//eV//at room temperature/T=300 K
EF=kBT*log(n0/Nc)*1000;//meV
disp(EF,"Position of fermi level(meV)");
