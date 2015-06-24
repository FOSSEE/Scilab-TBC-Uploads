clc
//Initialization of variables
disp("Using gas tables,")
T1=1160 //R
h1=281.14 //B/lbm
Pr1=21.18 
P2=30 //psia
P1=100 //psia
//calculations
Pr2=Pr1*P2/P1
T2=833 //R
h2=199.45 //B/lbm
dh=h2-h1
//results
printf("Change in enthalpy = %.2f B/lbm",dh)
