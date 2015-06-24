clc();
clear;
// To calculate heat loss by natural convection in a horizontal nominal steam pipe 

D=0.375;                                   // Outer diameter in ft
T1=200;                                    // Pipe surface temperature in degF
T2=70;                                     // Air temperature in degF
Tf=(T1+T2)/2;                              // Film temperature at whih physical properties is to be measured
delT=T1-T2;
rho=0.0667/32.2;                           // Density in slug/ft^3
u=0.0482/32.2;                             // Viscosity in slug/ft-hr
b=1/(460+T2 );
Cp=0.241*32.2;                             // Heat capacity in Btu/slug-ft
// The value of specific heat is related to 1 lb mass so it must be multiplied to 32.2 to convert it into slugs
k=0.0164;                                  // Thermal conductivity in Btu/hr-ft-degF
g=32.2*3600;
// Unit of time used is hour so it must be converted to sec. Hence 3600 is multiplied  
Ngr=D^3*rho^2*b*g*delT/(u^3);              // Grasshops number
Npr=u*Cp/k;                                // Prandtls number
A=log(Ngr*Npr);

// Tha value of A is 6.866
// Now seeing the value of nusselt number from the table

Nnu=25.2;                                  // Nusselt number
h=Nnu*k/D;                                 // Heat transfer coefficient 
q=h*delT;                                  // Heat loss per unit area in Btu/hr

printf("Heat loss per unit square foot is %d Btu/hr-ft^2",q);
