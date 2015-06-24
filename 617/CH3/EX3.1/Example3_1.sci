clear;
clc();

// To find heat loss per square feet of wall surface per hour

deltax=9/12;                 // thickness of wall in ft
k=0.18;                // thermal conductivity of wall in B/hr-ft-degF
t1=1500;                     // inside temperature of oven wall in degF
t2=400;                      // outside temperature of oven wall in degF

q=k*(t1-t2)/deltax;          // heat loss in Btu/hr
printf("\n The heat loss for each square foot of wall surface is %d Btu/hr-ft^2",q);