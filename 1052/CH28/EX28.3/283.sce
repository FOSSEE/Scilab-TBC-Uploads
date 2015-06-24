clc;
//Example 28.3
//page no 430
printf("Example 28.3 page no 430\n\n");
//we have to determine the minimum distance downstream from a cement dust emitting  source that will be free of cement deposit 
//the souce is equipped with a cyclone located 150 ft above ground level 
//neglect meteorological aspects
h=150//cyclone height from ground level,ft
v_w=3/3600//wind velocity,miles/second
SG=1.96//specific gravity of cement dust
rho_w=62.4//density of water,lb/ft^3
rho_p=SG*rho_w///density cement particles
//applying ideal gas law for density of air
P=1//pressure,atm
M= 29//mol. weight of air
R=0.73//gas constant 
T=520//temperature,Rankine
rho_a=P*M/(R*T)//density of air 
meu=1.22e-5//viscosity of air,lb/ft.s
g=32.174//grav. acc.
d_p=2.5/(25400*12)//particle diameter,ft
K = d_p*(g*rho_p*rho_a/(meu^2))^(1/3)//settling factor
printf("\n settling factor K=%f ",K);
//since K=0.103<3.3,sokes law rane applies
v= g*d_p^2*rho_p/(18*meu)//terminal settling velocity)
printf("\nsettling velocity v=%f ft/s",v);
t=h/v//time for desent
printf("\n desent time t=%f sec",t);
x=v_w*t//horizontal distance travelled in miles
printf("\n minimum horizontal distance x=%f miles",x);//printing mistake in book
