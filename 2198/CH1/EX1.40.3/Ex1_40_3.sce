//Ex 1.40.3
clc;clear;close;
format('v',9);

//Given : 
ni=1.5*10^10;//per cm^3
ND=10^17;//per cm^3
no=ND;//per cm^3///Nd>>ni
po=ni^2/no;//per cm^3
KT=0.0259;//constant
delEf=KT*log(no/ni);//eV
disp("Fermi level, Ef = Ei+"+string(delEf)+" eV");
