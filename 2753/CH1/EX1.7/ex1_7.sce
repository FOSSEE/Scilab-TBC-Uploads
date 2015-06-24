//Example 1.7: 
clc;
clear;
close;
//given data :
format('v',6)
//Nd1=Nc*exp^-(Ec-Ef1)/kT ...Formula Used
Nc=1;//assume
kT=0.03;//eV
EcEf1=0.5;//position of Fermi level in V
Nd=1;//assume
Nd1=3*Nd;//After tripling the donor concentration
EcEf2=(EcEf1-(kT*(log(Nd1/Nd))));//in eV
disp(EcEf2,"new position of Fermi-level is ,(eV)=")
