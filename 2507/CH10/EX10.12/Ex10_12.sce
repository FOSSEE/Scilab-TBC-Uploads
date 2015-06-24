clc
clear
printf("Example 10.12 | Page number 361 \n\n");
//Find the work and heat interactions during the expansion process
//Given data
m =0.1 //kg
p1 = 10 //bar 
p2 = 1 //bar
//Solution
//From saturated steam table
v1 = 0.1944 //m^3/kg
v2 = (p1/p2)^(1/1.3)*v1 //m^3/kg
W = m*(p1*v1-p2*v2)*100/(1.3-1) //kJ
printf("Work during expansion process = %.2f kJ\n",W)
h1 = 2778.1 //kJ/kg
u1 = (h1 - p1*v1*100) //kJ/kg

vf = 0.001043 //m^3/kg
vg = 1.694 //m^3/kg
x2 = (v2-vf)/(vg-vf) //Dryness fraction
hf = 417.33 //kJ/kg
hg = 2675.5 //kJ/kg
h2 = (1-x2)*hf + x2*hg //kJ/kg
u2 = h2 - p2*v2*100 //kJ/kg
printf("Heat rejected from steam = %.2f kJ",W+m*(u2-u1))
