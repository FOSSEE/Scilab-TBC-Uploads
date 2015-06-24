clear;
clc();

// To calculate heat loss from pipe

d1=10.75/12;            // outer diameter of pipe in ft
x1=1.5/12;              // thickness of insulation 1 in ft
x2=2/12;                // thickness of insulation 2 in ft
d2= d1+2*x1;            // diameter of insulation 1 in ft
d3=d2+2*x2;             // diameter of insulation 1 in ft
t1=700;                 // inner surface temperature of composite insulation in degF
t2=110;                 // outer surface temperature of composite insulation in degF
k1=0.05;                //thermal conductivity of material 1 in Btu/hr-ft-degF
k2=0.039;               // thermal conductivity of material 2 in Btu/hr-ft-degF

q=2*%pi*(t1-t2)/(log(d2/d1)/k1+log(d3/d2)/k2);                                     // heat loss per linear foot in Btu/hr
printf("\n The heat loss is found to be %d Btu/hr-ft", q);