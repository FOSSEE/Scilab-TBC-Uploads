clc
//Initialization of variables
disp("From molier diagram,")
h1=1357 //500 psia 700F
h2=1194 //P2=100 psia
h3=1379 //100 psia, 700 F
h4=1047 //p4=2 psia
h5=93.99 //sat liq at 2 psia
h6=95.02 //example 12.1
//calculations
W=h1-h2+h3-h4-(h6-h5)
Q=(h1-h6)+(h3-h2)
eta=W/Q
//results
printf("Thermal efficiency = %.2f percent",eta*100)
