clc;
warning("off");
printf("\n\n example7.2 - pg273");
// given
id=4;  //[m] - inside diameter
h=2;  //[m] - water level
ro=0.03;  //[m] - radius of exit hole
rt=id/2;  //[m] - inside radius
g=9.80665;  //[m/sec^2] - gravitational acceleration
// using the equation dh/h^(1/2)=-((ro^2)/(rt^2))*(2*g)^(1/2)dt and integrating between h=2 and h=1
t1=integrate('(1/h^(1/2))*(1/(-((ro^2)/(rt^2))*(2*g)^(1/2)))','h',2,1);
printf("\n\n Time required to remove half of the contents of the tank is \n t=%fsec=%fmin",t1,t1/60);
//integrating between h=2 and h=0
t2=integrate('(1/h^(1/2))*(1/(-((ro^2)/(rt^2))*(2*g)^(1/2)))','h',2,0);
printf("\n\n Time required to empty the tank fully is \n t=%fsec=%fmin",t2,t2/60);


