clc;
//Example 25.5
//page no 373
printf("Example 25.5 page no 373\n\n");
//gas(propane) flows through a catalyst tower
Mw=44.1//molecular weight
P=4320//pressre at the bottom of the catalyst bed,psf
R=10.73//gas constant
T=960//temperature,Rankine
rho=P*Mw/(R*T*144)//density of propane
L=50//height of bed,ft
D=20//diameter of bed,ft
V=%pi*D^2*L/4//bed volume
theta=10//contact time,s
e=0.4//bed porosity
q=V*e/theta//volumetric flow rate
v_s=4*q/(%pi*D^2)//superficial  velocity
printf("\n superficial velocity v_s=%f ft/s",v_s);
v_i=v_s/e//interstitial velocity
printf("\n interstitial velocity v_i=%f ft/s",v_i);
rho_s=77.28//ultimate density(spheres )
rho_b=(1-e)*rho_s//bulk density
printf("\n bulk density rho_b=%f lb/ft^3",rho_b);
d_p=0.0833//diameter of particles
a_p=6/d_p//specific surface area
printf("\n specific surface area a_p=%f ft^-1",a_p);
a_b=a_p*(1-e)//bed specific surface
printf("\n bed specific surface a_b=%f ft^-1",a_b)
