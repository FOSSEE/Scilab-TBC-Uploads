clc;
warning("off");
printf("\n\n example7.21 - pg320");
// given
T=545.67;  //[degR] - temperature
R=1545;  //[Torr*ft^3/degR*mole] - gas constant
M=29;  //[g/mole] - molecular weight
g=9.807;  //[m/sec^2] - acceleration due to gravity
gc=9.807;  
po=760;  //[Torr] - pressure
deltaz=50;  //[ft]
// using the equation p=po*exp(-(g/gc)*M*(deltaz/R*T))
p=po*%e^(-(g/gc)*M*(deltaz/(R*T)));
printf("\n\n p=%fTorr\n Thus, the pressure decrease for an elevation of 50ft is very small",p);
