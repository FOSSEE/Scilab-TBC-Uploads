//Example 4_4
clc;
clear;
close;
format('v',6)
//given data : 
c=3*10^8;//m/s//Speed of light
h=1.05*10^-34;//Js//Planks Constant
mc_GaAs=0.067;//mo
mc_InAs=0.01;//mo
k=0.01;///per Angstrum
mc_GaAs=mc_GaAs*0.91*10^-30;//kg
mc_InAs=mc_InAs*0.91*10^-30;//kg
E_GaAs=h^2*(3*k*10^10)^2/2/mc_GaAs;//J
E_GaAs=E_GaAs/(1.6*10^-19)*1000;//meV
disp(E_GaAs,"Energy of the electron in GaAs(meV)");
E_InAs=h^2*(3*k*10^10)^2/2/mc_InAs;//J
E_InAs=E_InAs/(1.6*10^-19)*1000;//meV
disp(E_InAs,"Energy of the electron in InAs(meV)");
//Answer given in the textbook is wrong.
