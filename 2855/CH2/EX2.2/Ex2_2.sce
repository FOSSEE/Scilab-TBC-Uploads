//Chapter 2
//page no 45
//given
clc;
clear ;
//Given  for silicon for temp 0-400K
Eg0_Si=1.17;       //in eV
A=4.73*10^-4;       //in eV/K
B=636;
for i=1:8
T=50*i;      //degree/Kelvin
Eg_Si=Eg0_Si-(A*T^2)/(B+T);
printf("\n Band gap energy of silicon at %.0f K is %.3f eV ",T,Eg_Si);//result
end
//Given  for Germanium for temp 0-400K
disp("");
Eg0_Ge=0.7437;       //in eV
A_Ge=4.774*10^-4;       //in eV/K
B_Ge=235;
for i=1:8
T=50*i;      //degree/Kelvin
Eg_Ge=Eg0_Ge-(A_Ge*T^2)/(B_Ge+T);
printf("\n Band gap energy of germanium at %.0f K is %.3f eV ",T,Eg_Ge);//result
end

//Given  for GaAs for temp 0-400K
disp("");
Eg0_Ga=1.519;       //in eV
A_Ga=5.405*10^-4;       //in eV/K
B_Ga=204;
for i=1:8
T=50*i;      //degree/Kelvin
Eg_Ga=Eg0_Ga-(A_Ga*T^2)/(B_Ga+T);
printf("\n Band gap energy of GaAs at %.0f K is %.3f eV ",T,Eg_Ga);//result
end
