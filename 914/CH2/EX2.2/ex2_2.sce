clc;
warning('off');
printf("\n\n example2.2 - pg29");
// given
dely=0.1;  //[m] - distance between two parralel plates
delUx=0.3;  //[m/sec] - velocity of a plate
mu=0.001;  //[kg/m*sec] - viscosity
// using the formula tauyx=F/A=-mu*(delUx/dely)
tauyx=-mu*(delUx/dely);
printf("\n\n the momentum flux and the the force per unit area,(which are the same thing) is\n tauyx=F/A=%fN/m^2",tauyx);

