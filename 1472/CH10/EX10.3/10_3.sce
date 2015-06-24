clc
//initialization of varaibles
T=250 //F
disp("From table 1,")
p=29.825 //psia
hg=1164 //B/lb
vg=13.821 //cu ft/lb
//calculations
ug=hg-(p)*144*vg/778
//results
printf("Internal energy of the gas = %.1f B/lb",ug)
