clc
//Initialization of variables
disp("From Mollier diagram,")
h1=1357 //500 psia, 700 F
h2=935 //P2=2 psia
h3=93.99 //sat liq at 2 psia
vf=0.01613
P4=500 //psia
P3=2 //psia
//calculations
dh4=vf*(P4-P3)*144/778
h4=h3+dh4
eta= ((h1-h2)-(h4-h3))/(h1-h4)
//results
printf("Thermal efficiency = %.1f percent ",eta*100)
