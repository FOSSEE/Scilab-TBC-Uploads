clc
clear
//Initialization of variables
P=200 //psia
T=500 //F
//calculations
disp("From mollier chart,")
hi=1269 //Btu/lb
hf=1063 //Btu/lb
dh=hi-hf
y1=91
//results
printf("Quality = %.1f percent",y1)
printf("\n Change in enthalpy = %d Btu/lb",dh)
