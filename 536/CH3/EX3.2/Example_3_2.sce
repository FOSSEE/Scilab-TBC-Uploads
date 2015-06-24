clc;

printf("Example 3.2\n\n");
d=50e-3; //Diameter of pipe
l=100; //length of pipe
e=0.013; //Roughness of pipe
DPf=50e3; //Maximum pressure drop
rho=1000; //density of water
meu=1e-3; //viscosity of water
printf(" Given:\n Diameter of pipe = %.3f m\n length of pipe = %d m\n Roughness of pipe = %.3f \n Maximum pressure drop = %d kN/m^2\n Density of water = %d kg/m^3\n Viscosity of water = %.1f mN s/m^2",d,l,e,DPf/10e3,rho,meu*10e3);
//From Equation 3.23
// phi*Re^2=R*Re^2/(rho*u^2)=-(DPf)*d^3*rho/(4*l*meu^2)
phi_re2=(DPf)*d^3*rho/(4*l*meu^2);
e_d=e/(d*1e3);
printf("\n\n phi*Re^2 = %.2f*10^7\n e/d = %.5f",phi_re2*1e-7,e_d);
//From Figure 3.8, for given phi*Re^2 = 1.56 x 10^7 and (e/d) = 0.00026, then:
//Re=7.9*10^4
Re=7.9e4;
u=Re*meu/(rho*d);
printf("\n\n Ans \n The maximum allowable velocity is = %.1f m/s",u);