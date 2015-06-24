//Example 4_5
clc;
clear;
close;
format('v',6)
//given data : 
c=3*10^8;//m/s//Speed of light
h=1.05*10^-34;//Js//Planks Constant
mc=0.067;//mo
k=[0.1 0.1 0 0];///per Angstrum
mc=mc*0.91*10^-30;//kg
E=h^2*((k(1)*10^10)^2+(k(2)*10^10)^2)/2/mc;//J
E=E/(1.6*10^-19);//eV
disp(E,"Energy of the electron in GaAs(eV)");
//Answer given in the textbook is wrong.
