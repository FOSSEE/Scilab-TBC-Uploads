clear
clc
//l=75 cm,d=60 cm,H20 Produced=108kg/s
l=0.75;d=0.6;
V=(3.14*d*d*l)/4;
//H2+0.5*O2=H2O
//Molecular wt of H2O=18
M=18;
//H2O Produced in kmol/s
H20_produced=108/M;
//H2 used
H2_used=H20_produced;
//O2 Used
O2_used=0.5*H20_produced;
//Rate of reaction
//Rate of reaction of H2(mol/m^3.s)
r_H2=(H2_used/V)*1000;
//Rate of reaction of O2(mol/m^3.s)
r_O2=(O2_used/V)*1000;
printf("\nRESULT\n")
printf("rate of reaction of H2(mol/m^3.s) is %f\n",r_H2)
printf("\nrate of reaction of O2(mol/m^3.s) is %f\n",r_O2)




