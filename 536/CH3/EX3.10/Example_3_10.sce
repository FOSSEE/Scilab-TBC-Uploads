clc;

printf("Example 3.10\n");

k=10;
n=0.2;
//Using the power-law model (equation 3.121):
printf("\n Given:\n Consistency coefficient k = %d N.s^n/m^-2",k);
printf("\n Flow behaviour index = %.1f",n);
Ucl=1; // centre line velocity
printf("\n Centre line velocity = %d m/s",Ucl);
l=200; // length of pipe
printf("\n Length of pipe = %d m",l)
r=.02; // radius of pipe
printf("\n Radius of pipe = %.2f m",r);
dux_dy_1=10;
dux_dy_2=50;
Ry_1=k*dux_dy_1^0.2;
Ry_2=k*dux_dy_2^0.2;
//Using the Bingham-plastic model (equation 3.125):
A=[1 10;1 50]
B=[15.85;21.87]
C=inv(A)*B;
Ry=C(1);
Meu_p=C(2);
printf("\n\n Plastic viscosity (Meu_p) = %.3f N s/m^2",C(2));
printf("\n Yeild stress (Ry) = %.2f N s/m^2",C(1));
// Using Equation 3.131
DP=2*k*l*Ucl^n*((n+1)/n)^n*r^(-n-1);
printf("\n Pressure drop (Bingham plastic model)= %.0f kN/m^2",DP/1e3);
// For a Bingham-plastic fluid:
// The centre line velocity is given by equation 3.145:
X=(l*2*Ry)/(r*DP);
Up=(DP*r^2*(2-4*X+2*X^2))/(8*Meu_p*l);
printf("\n centre line velocity (Bingham plastic model) = %.2f m/s",Up);