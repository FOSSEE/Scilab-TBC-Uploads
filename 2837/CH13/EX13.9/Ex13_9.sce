clc
clear
//Initialization of variables
x=18.5 //Moles of O2
c=12 //Moles of CO2
vap=13 //moles of H2O
P=15 //psia
R=1545 //Universal gas constant
//calculations
excess=x*0.5
M=12*12+2*vap
n2=(x+excess)*79/21
nt=n2+excess+c
dry=[c x/2 n2]/nt *100
wet=nt+vap
fue=100/(M)
mol=wet*fue
vol=mol*R*1460/(144*P)
//results
disp("Volumetric analysis in percentage")
disp('       CO2         O2          N2')
disp(dry)
printf("Volume of wet products = %d cfm",vol)
