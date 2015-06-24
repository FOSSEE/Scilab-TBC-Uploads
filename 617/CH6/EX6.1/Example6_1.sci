clc();
clear;

// To calculate the reynolds number

u=2.08/32.2;                             // viscosity of water at 80degF in slug/ft-hr
rho=62.4/32.2;                           // density of water in slug/ft^3
d=2/12;                                  // inner diameter of tube in ft
v=10;                                    // average water velocity in ft/sec
Nre=d*v*rho*3600/u;                      // reynolds number
// 3600 is multiplies to convert sec into hrs
printf("Reynolds Number is %d",Nre);