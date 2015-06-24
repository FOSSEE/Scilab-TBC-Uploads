
clear;
clc;

printf("\t Example 8.6\n");

T2=363;       // temp. of strip,K
T1=373;       //saturated temp.,K
H=0.3;        // height of strip,m
Pr=1.86;   //prandtl no.
Hfg=2257;    //latent heat. kj/kg
ja=4.211*10/Hfg;   //jakob no.
a1=961.9;       //density of water,kg/m^3
a2=0.6;         //density of air,kg/m^3
k=0.677;        //thermal conductivity,W/(m*K)

Hfg1=Hfg*(1+(0.683-0.228/Pr)*ja);    //corrected latent heat,kj/kg

delta=(4*k*(T1-T2)*(2.99*10^(-4))*0.3/(a1*(a1-a2)*9.806*Hfg1*1000))^(0.25)*1000;

Nul=4/3*H/delta;    //average nusselt no.
q=Nul*k*(T1-T2)/H;   // heat flow on an area about half the size of a desktop,W/m^2
Q=q*H;   //overall heat transfer per meter,kW/m

m=Q/(Hfg1);     //mass rate of condensation per meter,kg/(m*s)

printf("\t overall heat transfer per meter is :%.1f kW/m^2\n",Q);
printf("\t  film thickness at the bottom is :%.3f mm\n",delta);
printf("\t mass rate of condensation per meter. is : %.4f kg/(m*s)\n",m);

//end