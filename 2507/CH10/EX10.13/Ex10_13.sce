clc
clear
printf("Example 10.13 | Page number 361 \n\n");
//Find the exit area of the nozzle
//Given data
p1 = 10 //bar
t1 = 300 //°C
V1 = 50 //m/s
p2 = 1 //bar
m = 1.2 //kg/s

//Solution
//From superheated steam table
h1 = 3051.2 //kJ/kg
s1 = 7.1228 //kJ/kgK
p2 = 1 //bar
s2 = s1 //kJ/kgK

sf = 1.3025 //kJ/kgK
sg = 7.3593 //kJ/kgK
x2 = (s2-sf)/(sg-sf) //Dryness fraction
hf = 417.44 //kJ/kg
hg = 2675.5 //kJ/kg
h2 = (1-x2)*hf + x2*hg //kJ/kg
vf = 0.001043 //m^3/kg
vg = 1.694 //m^3/kg
v2 = (1-x2)*vf + x2*vg //m^3/kg
V2 = (2*(1000*(h1-h2))+V1^2)^0.5 //m/s
A2 = m*v2/V2*10000//cm^3
printf("The exit area of the nozzle = %.1f cm^2",A2)
