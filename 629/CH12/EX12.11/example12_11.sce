clear
clc
//Example 12.11 SHOCK WAVE IN LAVAL NOZZLE
k=1.4;
AoA=1/2 ;//AoA=(Ao/A)
AeAo=4; //AeAo=(Ae/Ao)
//From table A.1, interpolation for A/Ao=2,
//for supersonic flow
M1=2.2;
//for normal shock
M2=0.547;
pt21=0.6281; //pt21=(pt2/pt1)
pt1=1000; //[kPa]
pt2=pt21*pt1 //[kPa]
//for subsonic part at M=M2,
AAv=1.26; //AAv=(A/Av)
//Exit area ratio
//Ae/Av=(Ae/Ao)*(Ao/A)*(A/Av)
AeAv=AeAo*AoA*AAv //AeAv=(Ae/Av)
//for subsonic flow at A/Ao=(Ae/Av)
M=0.24; 
//Exit pressure
pe=pt2/((1+(k-1)*M^2/2)^(k/(k-1))) //[kPa]
printf("\n The static pressure at the exit = %.f kPa.\n",pe)