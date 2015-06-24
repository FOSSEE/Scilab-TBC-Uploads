clc;
warning("off");
printf("\n\n example7.14 - pg304");
// given
p1=5;  //[atm] - initial pressure
p2=0.75;  //[atm] - final pressure after expansion through turbine
T=450;  //[K] - temperature
y=1.4;  // cp/cv for nitrogen
// using the equation Ws=-(y/(y-1))*(p1/density1)*((p2/p1)^((y-1)/y)-1)
R=8314;  // gas constant
p1bydensity=R*T;
Ws=-(y/(y-1))*(p1bydensity)*((p2/p1)^((y-1)/y)-1);
printf("\n\n the shaft work of the gas as it expands through the turbine and transmits its molecular energy to the rotating blades is \n Ws=%eJ/kmol",Ws);


