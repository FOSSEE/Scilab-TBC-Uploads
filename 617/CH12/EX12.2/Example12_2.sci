clc();
clear;

// To calculate the heat loss per square foot from an uninsulated 2 inch sch. pipe

D=2.375/12;                                     // Outer diameter of pipe in ft
k=0.035;                                      // Thermal conductivity in Btu/hr-ft-degF
T1=400;                                       // Temperature of pipe in degF
T2=70;                                        // Temperature of air in degF
delT=T1-T2;                                   // Temperature differnce in degF
T2=120;                                       // Assumed temperature in degF 
h=3.67;                                    
// As seen from the table , for delT=330. the value of hc+hr=3.67
q=h*delT;                                     // Heat loss in Btu/hr
printf("The heat loss per square foot of pipe is %d Btu/hr-ft",q);
