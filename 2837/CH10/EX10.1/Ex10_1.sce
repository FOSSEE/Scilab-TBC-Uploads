clc
clear
//Initialization of variables
p=3000 //psia
T=250 //F
//calculations
disp("From table 1, keenan and keynes,")
vf=0.01700
disp("From table 4,")
dvf=-18.3*10^-5 
v=vf+dvf
disp("From table 1,")
hf=218.48
disp("From table 4,")
dhf=6.13
h=hf+dhf
sf=0.3675
dsf=-4.34*10^-3
s=sf+dsf
//results
printf("Specific volume = %.5f cu ft/lb",v)
printf("\n Enthalpy = %.2f Btu/lb",h)
printf("\n Entropy  = %.4f Btu/lb per deg R",s)
