clc;
warning("off");
printf("\n\n example7.10 - pg298");
// given
d=0.03;  //[m] - diameter
g=9.784;  //[m/sec] - acceleration due to gravity
deltaz=-1;
// using the equation (1/2)*(U3^2/alpha3-U1^2/alpha1)+g*deltaz=0
// assuming
alpha1=1;
alpha3=1;
// also since the diameter of the tank far exceeds the diameter of the hose , the velocity at point 1 must be negligible when compared to the velocity at point 3
U1=0;
U3=(-2*g*deltaz+(U1^2)/alpha1)^(1/2);
p=1000;  //[kg/m^3] - density of water
S3=(%pi/4)*(d)^2
w=p*U3*S3;
printf("\n\n the mass flow rate is \n w=%fkg/sec",w);
// the minimum pressure in the siphon tube is at the point 2. Before the result of 3.13 kg/sec is accepted as the final value, the pressure at point 2 must be calcilated in order to see if the water might boil at this point
// using deltap=p*((U3^2)/2+g*deltaz)
deltap=p*((U3^2)/2+g*deltaz);
p1=1.01325*10^5;  //[N/m^2] - is equal to atmospheric pressure
p2=p1+deltap;
vp=0.02336*10^5;
if p2>vp then
    printf("\n\n the siphon can operate since the pressure at point 2 is greater than the value at which the liquid boils");
else
    printf("\n\n the siphon cant operate since the pressuer at point 2 is less than the value at which the liquid boils");
    
end