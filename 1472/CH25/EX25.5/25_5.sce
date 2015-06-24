clc
//initialization of varaibles
disp("From psychrometric charts,")
g1=0.0131 //lb water/lb dry air
g2=0.0093 //lb water/lb dry air
h1=32.36 //B/lb dry air
h2=27.03
hd2=23.4 //B/lb dry air
hf=23.4  //B/lb dry air
hw1=1094.5
//calculations
tdp=55.3 //F
wratio=g1-g2
Qc=hd2-h1+wratio*hf
Qh=h2-hd2
Heat=wratio*(hw1-hf)
frac=-Heat/Qc
//results
printf("Cooling temperature = %.1f F",tdp)
printf("\n heat transfer = %.2f B/lb dry air",Heat)
printf("\n Fraction of heat removed = %.2f",frac)
