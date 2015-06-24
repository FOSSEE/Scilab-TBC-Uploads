clc;
clear;

printf("\n Example 9.10\n");

G=15;//Mass flow rate of benzene
d_s=1; //Internal diameter of Heat Exchanger
l=5; //Length of tubes
od=19e-3; //Outer diameter of tubes
C=6e-3; //Clearance
l_b=0.25; //Baffle spacing
Meu=.5e-3;
Y=25e-3; //dimension of square pitch
N=19; //no. of Baffles

As=d_s*l_b*C/Y; //Cross-flow area
printf("\n Cross-flow area = %.2f m^2",As);
G_dash_s=G/As; //Mass flow
printf("\n Mass flow = %d kg/m^2 s",G_dash_s);
d_e=4*(Y^2-(%pi*od^2/4))/(%pi*od);//Equivalent Diameter
printf("\n Equivalent Diameter = %.4f m",d_e);
Re=G_dash_s*d_e/Meu;
//From Figure 9.29:
f_dash=.280;
rho_b=881;//density of benzene
DPf=f_dash*G_dash_s^2*(N+1)*d_s/(2*rho_b*d_e);
printf("\n The pressure drop over the tube bundle = %.0f N/m^2",DPf);
printf("\n\t\t\t\t\t= %.0f m of Benzene",DPf/(rho_b*9.81));


