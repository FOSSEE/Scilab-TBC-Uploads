clear
clc
//Example 9.3 LAMINAR BOUNDARY-LAYER THICKNESS AND SHEAR STRESS
Uo=1; //[ft/s]
v=10^-4; //[ft^2/s]
S=0.86; //specific gravity
rho=1.94*S //density [slugs/ft^3]
mu=rho*v //[lbf.s/ft^2]
//Graph plots
x=linspace(0.1,7,15); //distance[ft]
delta=5*(sqrt(v*x/Uo))*12; //boundary layer thickness [inch]
To=0.332*mu*Uo*sqrt(Uo*(v*x)^-1)*10^2; //sheer stress in 100 [psf]
plot(x,delta,"+-")
plot(x,To,"o-")
xtitle("delta,To vs x","Distance,ft ","delta (inches), Tox100 (psf)");
legend("Boundary layer thickness (delta)","Surface sheer stress (To)");