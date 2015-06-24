clc
clear
printf("Example 10.11 | Page number 360 \n\n");
//Find the heat rejected from steam
//Given data
p1 = 2 //bar
v1 = 0.624 //m^3/kg
t = 120.23 //°C
m = 0.16 //kg
//Solution
vf = 0.001061 //m^3/kg
vg = 0.8857 //m^3/kg
x1 = (v1-vf)/(vg-vf) //Dryness fraction
hf = 504.68 //kJ/kg
hg = 2706.6 //kJ/kg
h1 = (1-x1)*hf + x1*hg //kJ/kg
u1 = h1 - p1*v1*100//kJ/kg

v2 = v1 //m^3/kg
vf = 0.001044 //m^3/kg
vg = 1.673 //m^3/kg
x2 = (v1-vf)/(vg-vf) //Dryness fraction
hf = 419 //kJ/kg
hg = 2676 //kJ/kg
h2 = (1-x2)*hf + x2*hg //kJ/kg
p2 = 1.010325 //bar
u2 = h2 - p2*v2*100 //kJ/kg
 
printf("Heat rejected from steam = %.1f kJ",m*(u2-u1))
