 clc();
clear;

// to find tempearture difference between inner and outer surface
r=1/4;                                     // radius in inches
to=300;                                    // outer surface temperature of cylinder in degF
q0=10;                                     // i2r heat loss in Btu-in^2/hr
k=10;                                      // thermal conductivity of the material in Btu/hr-ft-degF
tc=to+(q0*r*r)*12 /(4*k);                  // temperature at center
delt=tc-to;
printf("The temperature diference between center and outer surface is %.2f degF",delt);

// to find heat flow from outer surface

// Total energy within the cylinder must be transferred to as heat to outer surface

v=%pi*r^2;                                 // Volume of heatinf element in in^3
q1=q0*v;                                   // heat flow to outer surface in Btu/sec
tr=-q1*r/(2*k);                            // derivative of temperature wrt radius
q=q1*12;                           // Heat flow at the outer surfae in Btu/hr-ft
printf("\n Heat transfer per unit length at the outer surface is %.1f Btu/hr",q);
