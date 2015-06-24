clc
//Initialization of variables
x=0.8
//calculations
disp("From molier diagram,")
h1=1357 //500 psia 700F
h2=1194 //P2=100 psia
h3=1379 //100 psia, 700 F
h4=1047 //p4=2 psia
h5=93.99 //sat liq at 2 psia
h6=95.02 //example 12.1
h2d=h1- x*(h1-h2) 
h4d=h3- x*(h3-h4)
W=(h1-h2d) +(h3-h4d) - (h6-h5)
Q=(h1-h6) + (h3-h2d)
eta=W/Q
//results
printf("Thermal efficiency = %d percent",eta*100+1)
