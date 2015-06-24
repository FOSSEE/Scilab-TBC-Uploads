clc
//Initialization of variables
P=100 //psia
//calculations
disp("From mollier diagram,")
h1=1357 //500 psia, 700F
h2=1194 //100 psia
h3=935//2 psia
h4=93.99 //sat liq at 2 psia
vf=0.01613 
vf2=0.01774
P5=100 //psia
P4=2 //psia
dh4=vf*(P5-P4)*144/778
h5=h4+dh4
h6=298.4
P7=500 //psia
P6=100 //psia
dh6=vf2*(P7-P6)*144/778
h7=dh6+h6
m=(h6-h5)/(h2-h5)
W=h1-h2 + (1-m)*(h2-h3) - (1-m)*(h5-h4) -(h7-h6)
Q=h1-h7
etath=W/Q
//results
printf("Thermal efficiency = %.1f percent",etath*100)
