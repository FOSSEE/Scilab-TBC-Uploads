clc
//initialization of varaibles
T=100 //F
P=1000 //psia
//calculations
disp("From table 4")
dvf=-5.1*10^-5
dhf=2.7
vf=0.01613
hf=67.97
v=vf+dvf
h=hf+dhf
//results
printf("Enthalpy = %.2f B/lb",h)
printf("\n Volume = %.5f cu ft/lb",v)
