clc;
clear;

printf("\n Example 9.9\n");

Cp=2380;//specific heat capacity of nitrobenzene
k=0.15;
Meu=0.70e-3;//Viscosity of nitrobenzene
d_i=15e-3;//internal diameter of tube
d_o=19e-3;//external diameter of the tube
d_s=0.44;//shell diameter
b_s=0.150;//baffle spacing
p=0.025;//pitch
c=0.006;//clearance
//(i)Tube side coefficient
h_i=1000;//based on inside area
h_io=1000*d_i/d_o;//based on outside area
//(ii) Shell side coefficient.
A=d_s*b_s*c/p;//Area for flow
G_s_=4/A;
//Taking Meu/Meu_s=1 in equation 9.91
d_e=4*((25e-3^2-(%pi*d_o^2/4))/(%pi/d_o));
h_o=0.36*k/d_e*(d_e*G_s_/Meu)^0.55*(Cp*Meu/k)^0.33;
//(iii) Overall coefficient
//The logarithmic mean temperature difference is given by:
Tm=(((400-345)-(315-305))/log((400-345)/(315-305)));
//The corrected mean temperature difference is
Tm_c=Tm*0.8;
Q=4*Cp*(400-315);
//The surface area of each tube
A_t=0.0598;
U_o=Q/(2*166*5*A_t*Tm_c);
//(iv) Scale resistance.
R_d=(1/U_o)-(1/750)-(1/1000);
printf("\n Value of scale resistance that could be allowed = %.5f m^2 K/W",R_d);