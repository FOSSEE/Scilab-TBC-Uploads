//Example 4_10
clc;
clear;
close;
format('v',7)
//given data : 
h=1.05*10^-34;//Js//Planks Constant
mc=0.067;//mo
mc=mc*0.91*10^-30;//kg
n0=10^18;//cm^-3
n0=n0*10^6;//m^-3
EF=(h^2/2/mc)*(3*%pi^2*n0)^(2/3);//J
EF=EF/(1.6*10^-19);//eV
disp(EF,"Position of fermi level(eV)");
//Answer given in the textbook is wrong
