clc 
//initialisation of variables
Cc= 1
Cv= 0.833
d= 2 //in
g= 32.2 //ft/sec^2
H= 12 //ft
Pa= 34 //lb/in^2
///CALCULATIONS
Q= Cc*Cv*%pi*(d/12)^2*sqrt(2*g*H)/4
Cd= Cc*Cv
Pc= Pa-0.92*H
//RESULTS
//RESULTS
printf ('Discharge = %.3f cu ft/sec ',Q)
printf ('\n Coefficient of discharge = %.3f  ',Cd)
printf ('\n Pressure at Vent-contraction= %.2f ft of water ',Pc)
