clear
clc
//Example 9.2 PRESSURE GRADIENT FOR FLOW BETWEEN PARALLEL PLATES
q=0.01; //discharge per meter [m^2/s]
rho=800; //density [kg/m^3]
mu=2*10^-2; //[N.s/m^2]
Re=q*rho/mu
//Re<1000. Hence, flow is luminar and equations apply.

v=mu/rho //viscosity [m^2/s]
B=0.01; //[m]
g=9.81; //[m/s^2]
Gamma=0.8*9810; //specific weight [N/m^3]
dhds=-12*v*q/(g*B^3) //Piezometric head gradient (dh/ds)
dzds=-1; //(dz/ds)
//(dh/ds)=(d(p/gamma)/ds)+(dz/ds)
dpds=Gamma*(dhds-dzds) //pressure gradient (dp/ds), [N/m^3]
printf("\nThe pressure gradient, (dp/ds) = %.f N/m^2 per meter.\n",dpds)