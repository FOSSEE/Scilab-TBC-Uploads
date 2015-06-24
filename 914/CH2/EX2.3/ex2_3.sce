clc;
warning('off');
printf("\n\n example2.3 - pg30");
// given
tauyx=-0.003;  //[N/m^2] - momentum flux
dely=0.1;  //[m] - distance between two parralel plates
mu=0.01;  //[kg/m*sec] - viscosity
// using the formula tauyx=F/A=-mu*(delUx/dely)
delUx=-((tauyx*dely)/mu)*100;
printf("\n\n Velocity of the top plate is \n deltaUx=%fcm/sec",delUx);
