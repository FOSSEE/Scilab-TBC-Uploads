clc;
clear;
printf("\n Example 8.7\n");

d=40e-3;//Internal Diameter of the pipe
l_p=150; //Lendth of pipe
Q_watr=600e-6;//Flow of water
h1=10; //Vertical Height
h2=2; //head lost across heat exchanger
eta=60/100; //Efficiency of pump

A=%pi/4*d^2; //Area for flow
printf("\n Area for flow = %.4f m^2",A);
u=Q_watr/A; //Velocity
//At 320 K,
Meu=0.65e-3;
rho=1000;
Re=d*u*rho/Meu;
printf("\n Reynolds no. = %d",Re);
phi=0.004; //for a relative roughness of 0.005
l=l_p+h1+(260*d);
printf("\n Equivalent length of pipe = %.1f m",l);
hf=4*phi*l*u^2/(d*9.81);
h_tot=hf+h1+h2;//Total head to be developed
printf("\n Total head to be developed = %.2f m",h_tot);
G=Q_watr*rho;// Mass flow of water
P_r=G*h_tot*9.81; //Power Required
P_s=P_r/eta; //Power Supplied
printf("\n Power Required = %.0f W",P_s);