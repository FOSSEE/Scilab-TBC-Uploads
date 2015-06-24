clc;
warning("off");
printf("\n\n example12.13 - pg595");
// given
distance=1/12;  //[ft]
time=60;  //[sec]
Ut=distance/time;
mu=1.68;  //[lb/ft*sec] - viscosity 
pp=58;  //[lb/ft^3] - density of sphere
p=50;  //[lb/ft^3] - density of polymer solution
g=32;  //[ft/sec] - acceleration due to gravity
rp=((9*mu)*(Ut)*((2*g)^(-1))*((pp-p)^(-1)))^(1/2);
printf("\n\n The required particle diameter would be about %f inch",rp*2*12);
Nre=(rp*2*Ut*p)/(mu);
disp(Nre,"Nre=");
printf("\n\n This reynolds number is well within the stokes law region ; thus the design is reasonable");
