clc;
clear;
printf("\t\t\tChapter9_example5\n\n\n");
//  Determination of the outlet temperature of the distilled  water and the pressure drop for each stream. 
// properties of (distilled) water at 104°F from appendix table CII
rou_1= 0.994*62.4; // density in lbm/ft^3 
cp_1=0.998; // specific heat BTU/(lbm-degree Rankine) 
v_1= 0.708e-5; // viscosity in ft^2/s 
kf_1 = 0.363 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a_1 = 5.86e-3; // diffusivity in ft^2/hr 
Pr_1 = 4.34; // Prandtl Number 
m_1=170000; // mass flow rate in lbm/hr
T1=110; // temperature in degree F
// properties of (raw) water at 68°F from Appendix Table C11
rou_2= 62.4; // density in lbm/ft^3 
cp_2=0.9988; // specific heat BTU/(lbm-degree Rankine) 
v_2= 1.083e-5; // viscosity in ft^2/s 
kf_2 = 0.345 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a_2 = 5.54e-3; // diffusivity in ft^2/hr 
Pr_2 = 7.02; // Prandtl Number 
m_2=150000; // mass flow rate in lbm/hr
t1=65; // temperature in degree F
// specifications of 3/4-in-OD, 18-BWG tubes, from table 9.2
OD=3/(4*12);
ID=0.652/12;
OD_p=1.375/12;
Nt=224; // from table 9.3
Np=2; // no. of tube passes
// Shell dimensions and other miscellaneous data
Ds=17.25/12;
Nb=15; // no. of baffles
B=1;
sT=15/(16*12);
C=sT-OD;
// flow areas
At=(Nt*%pi*ID^2)/(4*Np);
As=(Ds*C*B)/sT;
printf("\nThe areas are %.3f sq.ft and %.3f sq.ft",At,As);
if At>As then
    printf("\nThe distilled water flows through the tubes");
    else printf("\nThe raw water flows through the tubes");
end
// Shell Equivalent Diameter 
De=4*[(sT/2)*(0.86*sT)-(%pi*OD^2/8)]/(%pi*OD/2);
printf("\nThe equivalent diameter is %.4f ft",De);
// Reynolds Numbers 
Re_s=(m_1/3600)*(De)/(v_1*rou_1*As);
printf("\nThe Reynolds Number for raw water is %.2e",Re_s);
Re_t=(m_2/3600)*(ID)/(v_2*rou_2*At);
printf("\nThe Reynolds Number for distilled water is %.2e",Re_t);
// Nusselt numbers
Nu_t=0.023*(Re_t)^(4/5)*(Pr_2)^0.4;
Nu_s=0.36*(Re_s)^(.55)*(Pr_1)^(1/3);
printf("\nThe Nusselt number for raw water is %.1f",Nu_t);
printf("\nThe Nusselt number for distilled water is %.1f",Nu_s);
h_ti=Nu_t*kf_2/ID;
h_to=h_ti*ID/OD;
h_s=Nu_s*kf_1/De;
printf("\nThe convective coefficient for raw water based on inner diameter is %d BTU/(hr.sq.ft.degree R)",h_ti);
printf("\nThe convective coefficient for raw water based on outer diameter is %d BTU/(hr.sq.ft.degree R)",h_to);
printf("\nThe convective coefficient for distilled water is %d BTU/(hr.sq.ft.degree R)",h_s);
// Exchanger Coefficient 
Uo=1/((1/h_to)+(1/h_s));
printf("\nThe overall exchanger coefficient is %d BTU/(hr.sq.ft.degree R)",Uo);
R=(m_2*cp_2)/(m_1*cp_1);
L=16;
Ao=Nt*%pi*OD*L;
printf("\nThe ratio is %.3f and area is %.1f sq.ft",R,Ao);
UoAo_mccp=(Uo*Ao)/(m_2*cp_2);
printf("\n(UoAo)/(McCpc)=%.2f",UoAo_mccp);
S=0.58; //value of S from fig. 9.13 Ten Broeck graph corresponding to the value of (UoAo)/(McCpc)
t2=S*(T1-t1)+t1;
T2=T1-R*(t2-t1);
printf("\nt2=%.1f degree F\nT2=%.1f degree F",t2,T2);
//friction factors
ft=0.029; //friction factor for raw water fom figure 6.14 corresponding to Reynolds Number calculated above
printf("\nFriction factor for raw water fom figure 6.14 corresponding to Reynolds Number calculated above is %.3f",ft);
fs=0.281; //friction factor for distilled water fom figure 6.14 corresponding to Reynolds Number calculated above
printf("\nFriction factor for distilled water fom figure 6.14 corresponding to Reynolds Number calculated above is %.3f",fs);
// Velocities
V_t=(m_2/3600)/(rou_2*At);
V_s=(m_1/3600)/(rou_1*As);
printf("\nThe velocity of raw water is %.2f ft/s",V_t);
printf("\nThe velocity of distilled water is %.2f ft/s",V_s);
// pressure drops
gc=32.2;
dP_t=(rou_2*V_t^2)*((ft*L*Np/ID)+4*Np)/(2*gc);
dP_s=((rou_1*V_s^2)*(fs*Ds*(Nb+1)))/(2*gc*De);
printf("\nThe pressure drop for tube side is %.1f lbf/sq.ft = %.1f psi",dP_t,dP_t/147);
printf("\nThe pressure drop for shell side is %.1f lbf/sq.ft = %.1f psi",dP_s,dP_s/147);
printf("\n\t\t\tSummary of Requested Information\n");
printf("\nOutlet Temperatures:\n\tRaw Water: %.1f degree F\n\tDistilled Water: %.1f degree F\n",t2,T2);
printf("\nPressure Drops:\n\tRaw Water: %.1f ddegree F\n\tDistilled Water: %.1f degree F\n",dP_t/147,dP_s/147);
