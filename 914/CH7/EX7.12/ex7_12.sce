clc;
warning("off");
printf("\n\n example7.12 - pg301");
// given
Q=50/(7.48*60);  //[ft/sec] - volumetric flow rate of water
d1=1;  //[inch] - diameter of pipe
deltaz=-5;  //[ft] - distance between end of pipe and tank
g=32.1;  //[ft/sec] - acceleration due to gravity
Cp=1;  //[Btu/lb*F] - heat capacity of water
p=62.4;  //[lb/ft^3] - density of water
S1=(%pi/4)*(d1/12)^2;
U1=Q/S1;
w=p*Q;
U2=0;
gc=32.174;
// using the formula deltaH=(w/2)*((U2)^2-(U1)^2)+w*g*deltaz
deltaH=-(w/(2*gc))*((U2)^2-(U1)^2)-w*(g/gc)*deltaz;
disp(deltaH);
deltaH=deltaH/778;  // converting from ftlb/sec to Btu/sec
deltaT=deltaH/(w*Cp);
printf("\n\n The rise in temperature is %fdegF",deltaT);




