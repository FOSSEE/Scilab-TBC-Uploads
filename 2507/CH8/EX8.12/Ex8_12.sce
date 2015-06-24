clc
clear
printf("Example 8.12 | Page number 225 \n\n");
//Find the direction fo air flow
//Given Data
pA = 120 //kPa //Pressure at location A
TA = 50+273 //K //Temperature at location A
VA = 150 //m/s //Velocity at location A

pB = 100 //kPa //Pressure at location B
TB = 30+273 //K //Temperature at location B
VB = 250 //m/s //Velocity at location B

Cp = 1.005 //kJ/kg
R = 0.287 //kJ/kgK
//Solution
delta_S_sys = (Cp*log(TB/TA))-(R*log(pB/pA)) //kJ/kgK //Entropy of system
if delta_S_sys < 0 then
    printf("Flow is from B to A.");
else
    printf("Flow is from A to B.")    
end
