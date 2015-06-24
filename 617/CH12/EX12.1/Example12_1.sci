clc();
clear;

// To calculate the heat loss per linear foot from a 4-in. (out-side diameter=4.5 in.)nominal horizontal steel pipe covered with 1 in.of insulation

D=4.5/12;                                     // Outer diameter of pipe in ft
D2=6.5/12;                                    // Outer diameter of insulation in ft
k=0.035;                                      // Thermal conductivity in Btu/hr-ft-degF
T1=400;                                       // Temperature of pipe in degF
T3=70;                                        // Temperature of air in degF
T2=120;                                       // Assumed temperature in degF 
h=2*k*(T1-T2)/(D2*(T2-T3)*log(D2/D));         // Sum of coefficient of convection and radiation
delT=T2-T3;                                   // Temperature differnce in degF
T2=120;                                       // Assumed temperature in degF 
printf("The assumption of T2=120 comes out to be satisfactory and hc+hr=%.1f \n ",h);
q=h*%pi*D2*delT;                              // Heat loss in Btu/hr
printf("The heat loss per unit foot of pipe is %d Btu/hr-ft",q);
