//Example 4_3
clc;
clear;
close;
format('v',4)
//given data : 
c=3*10^8;//m/s//Speed of light
h=1.05*10^-34;//Js//Planks Constant
mc=0.1;//mo
mc=mc*0.91*10^-30;//kg
k=0.3;///per Angstrum
E=h^2*(k/10^-10)^2/2/mc;//J
E=E/(1.6*10^-19);//eV
disp(E,"Energy of the electron(eV)");
