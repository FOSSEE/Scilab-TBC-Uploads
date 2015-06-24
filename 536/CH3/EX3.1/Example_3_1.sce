clc;

printf("Example 3.1\n\n");
sap=1.25; //Sulphuric acid pumped
d=25e-3; //Diameter of pipe
l=30; //length of pipe
meu=25e-3; //Viscosity of acid
rho_a=1840; //Density of acid
printf(" Given :\n Sulphuric acid pumped = %.2f kg/s\n Diameter of pipe = %.3f m\n length of pipe = %d m\n Viscosity of acid = %d x 10^-3 N s/m^2\n Density of acid = %d kg/m^3",sap,d,l,meu*1000,rho_a);
Re=4*sap/(%pi*meu*d);
printf("\n\n\n Reynolds number , Re=(u*d*rho)/meu = 4G/(pi*meu*d)= %d",Re);

//For a mild steel pipe, suitable for conveying the acid, the roughness e will be between 0.05 and 0.5 mm (0.00005 and 0.0005 m).
//The relative roughness is thus: e/d = 0.002 to 0.02
//From Figure 3.7: R/(rho*u^2) = 0.006 over this range of e/d
u=sap/(rho_a*%pi/4*d^2);
printf("\n Velocity is , u=G/(rho *A) = %.2f m/s",u);

//calculating pressure drop from the energy balance equation and equation 3.19
Dp=rho_a*((0.5+4*0.006*30/0.025)*u^2+9.81*12);
printf("\n Pressure Drop = %.0f N/m^2",Dp);
printf("\n Pressure drop = %.0f kN/m^2",(Dp/10^3));