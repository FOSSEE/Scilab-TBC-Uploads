clc
//Initialization of variables
T1=540 //R
T2=960 //R
disp("From gas tables,")
h2=231.06 //B/lbm
h1=129.06 //B/lbm
cp=0.24
//calculations
W=h2-h1
dh=cp*(T2-T1)
//results
printf("Change in enthalpy = %.1f B/lbm",dh)
