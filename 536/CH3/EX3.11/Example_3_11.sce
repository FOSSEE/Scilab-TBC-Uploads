clc;

printf("Example 3.11\n");
// given:
Meu=0.1; // Viscosity of liquid
printf("\n Given \n Viscosity of liquid = %.1f N s/m^2",Meu);
d=25e-3; // Diameter of pipe
printf("\n Diameter of pipe = %.3f m",d);
l=20; // length of pipe
printf("\n length of pipe = %d m",l);
DP=1e5; // Pressure drop
printf("\n Pressure drop = %d N/m^2",DP);
n=1/3; // flow index of polymer solution
printf("\n flow index = %.2f",n);
dux_dy=1000;
k=Meu;
Meu_a=Meu;
k_poly_sol=Meu_a/(dux_dy)^(n-1);
Ry=10*(dux_dy)^n;
//From equation 3.136:
//For a power-law fluid:
u2=((DP/(4*k_poly_sol*l))^3)*(n*(d^((n+1)/n)))/(2*(3*n+1));
printf("\n\n Velocity for polymer solution = %.4f m/s",u2);
u1=(DP/(4*k*l))*(d^2)/8
printf("\n Velocity for original solution = %.3f m/s",u1);
ratio=u2/u1;
printf("\n Ratio of the volumetric flow rates of the two liquids = %.3f",ratio);
