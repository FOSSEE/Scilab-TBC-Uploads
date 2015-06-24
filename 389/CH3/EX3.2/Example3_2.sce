clear;
clc;

// Illustration 3.2
// Page: 56

printf('Illustration 3.2 - Page: 56\n\n');

// solution

//***Data****//
d = 0.025;// [m]
avg_velocity = 3;// [m/s]
viscosity = 8.937*10^(-4);// [kg/m.s]
density = 997;// [kg/m^3]
//*********//

kinematic_viscosity = viscosity/density;// [square m/s]
Re = d*avg_velocity*density/viscosity;
// Reynold's number comes out to be 83670
// At this Reynold's number fanning factor = 0.0047
f = 0.0047;
L = 1;// [m]
press_drop = 2*density*f*L*(avg_velocity^2)/(d);// [N/square m]
P = 3.141*(d^2)*avg_velocity*press_drop/4;// [N.m/s] for 1m pipe
m = 3.141*(d^2)*L*density/4;
// From Eqn. 3.24
Ld = ((kinematic_viscosity^3)*m/P)^(1/4);// [m]
// From Eqn. 3.25
Ud = (kinematic_viscosity*P/m)^(1/4);// [m/s]
printf('Velocity of small eddies is %f m/s\n',Ud);
printf('Length scale of small eddies is %e m',Ld);