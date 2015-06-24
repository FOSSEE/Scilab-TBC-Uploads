clc;
clear;

printf("\n Example 4.4");

A1=0.007;//cross sectional area of stack pipe
A2=4000e-6;//flow area of ruptured disc
P1=10e6;//Pressure of the gas in the vessel
Gamma=1.4;
M=40;//mean molecular weight of gas

w_c=(2/(Gamma+1))^(Gamma/(Gamma-1));
P_c=P1*w_c;
V1=(22.4/M)*(500/273)*(101.3e3/P1);//Specific volume of the gas in the reactor
V=V1*(1/w_c)^(1/Gamma);//Specific volume of gas at the throat
u=(Gamma*P_c*V)^0.5;//velocity at the throat
G=u*A2/V;//initial rate of discharge

printf("\n (a)Initial rate of discharge of gas = %.1f kg/s",G);
//obtaining the equations as given in book and solving for 'w' we get
w=0.0057;//Pressure ratio
P_u=P1*w;
printf("\n (b)The pressure upstream from the shockwave = %.0f kN/m^2",P_u*1e-3);
Mach_no=2.23*(w^(-0.29)-1)^0.5;
printf("\n    The mach number is = %.2f",Mach_no);
P_s=56.3*w*(w^(-0.29)-1)*1e6;
printf("\n (c)The pressure downstream from the shockwave = %.0f kN/m^2",P_s*1e-3);


