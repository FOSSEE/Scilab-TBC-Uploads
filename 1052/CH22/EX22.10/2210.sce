clc;
//Example 22.10
//page no 306
printf("\n Example 22.10 page no 306\n\n");
//benzene is pumped from a large tank to a delivery station 
//refer fig 22.3
q=0.003//vol. flow rate,m^3/s
//tank is at atmosphric pressure
D=0.03//diameter of suction and discharge line,m
v_2=q/((%pi/4)*D^2)//discharge velocity,m/s
//since all diameters are same likewise velocities are same
v_3=v_2
g=9.807//grav. acc.
D_h=(v_3^2)/(2*g)//dynamic head
printf("\n dynamic head D_h=%f m",D_h);
z1=0//height at point 1,tank level
z2=1.8//height at point 3
//applying bernoulli's eq. between the top of the tank(open to theatomsphere)and the inlet to the pump(station3)
rho=865//density of benzene,kg/m^3
P3=101325-(z2+D_h)*(rho*g)//ptressure at point 3
printf("\n pressure at point 3 P3=%f Pa",P3);
P_v=26200//vapor pressure of benzene,Pa
NPSH =  (P3 - P_v)/(rho*g) +  D_h
printf("\n  NPSH=%f m",NPSH)
//the manufacturer NPSH is 8 m, which is greater than the calculated NPSH  of 7.06m,therfore, the suction point of pump must be lowered 
//calculation of new pressure
NPSH_m=8//NPSH by manufacturer
P3_n_ab=8*(rho*g)-D_h*(rho*g) + P_v
printf("\n new pressure at point 3 P3_n_ab=%f Pa absolute",P3_n_ab);
P3_n_bz=-1.77//pressure in terms of benzene height,m
z3=-P3_n_bz -D_h//desired height of point 3
printf("\n height z3=%f m",z3);  
