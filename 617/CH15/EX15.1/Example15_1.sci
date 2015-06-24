clc();
clear;

// To calculate the pressure drop , heat loss per hour and fil coefficient of heat transfer

Tm=70;                                    // Average air temperature in degF
Tw=60;                                    // Pipe wall temperature in degF
thm=Tm-Tw;                                // Mean temperature difference in degF
// Thm is so small that the fluid properties may be based on 70 degF

v=30;                                     // Velocity in ft/sec 
L=1000;                                   // Length of pipe
D=3/12;                                   // Diameter in ft
y=0.15;                                   // Specific weight in  lb/ft^3
p=0.15/32.2;                              // Density in slug/ft^3
u=0.00137;                                // Viscosity in slug/ft/hr
Nre=v*3600*D*p/u;                              // Reynolds number
f=0.08/(Nre)^.25;                         // Nusselt number
delp=2*f*L*p*(v^2)/D;                     // Pressure drop in lb/sq.in
printf("The pressure drop is %d lb/sq.ft \n ",delp);


cp=0.24*32.2;                             // Specific heat capacity in slug/degF
Cp=0.24*0.15;                             // Heat capacity in Btu/ft^3-degF
k=0.0148;                                 // Thermal conductivity in Btu/ft-hr-degF
Npr=u*cp/k;                               // Prandtls number
phi=sqrt(Npr)/(1+(750*sqrt(Npr)/Nre)+7.5*(Npr^0.25)/sqrt(Nre));
A=%pi*L*D;                                // Area in ft^2
q=phi*f*Cp*A*v*thm*3600/(2*Npr);          // Heat loss in Btu/hr
printf("Heat loss per hour of air is %f Btu/hr \n ",phi);
h=q/(A*thm);                             // Film coefficient
printf("The film coefficient of heat transfer on the inner pipe wall is %.1f Btu/hr-ft^2-degF",h);

