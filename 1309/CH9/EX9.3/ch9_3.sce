clc;
clear;
printf("\t\t\tChapter9_example3\n\n\n");
//  Determination of the  outlet  temperature of the ethylene glycol  for counterflow.
// properties of air at (195 + 85)/2 = 140°F. from appendix table CII
rou_1= 0.985*62.4; // density in lbm/ft^3 
cp_1=0.9994; // specific heat BTU/(lbm-degree Rankine) 
v_1= 0.514e-5; // viscosity in ft^2/s 
kf_1 = 0.376 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a_1 = 6.02e-3; // diffusivity in ft^2/hr 
Pr_1 = 3.02; // Prandtl Number 
m_1=5000; // mass flow rate in lbm/hr
T_1=195; // temperature in degree F
// properties of ethylene glycol at 140 degree F from Appendix Table C.5
rou_2= 1.087*62.4; // density in lbm/ft^3 
cp_2=0.612; // specific heat BTU/(lbm-degree Rankine) 
v_2= 5.11e-5; // viscosity in ft^2/s 
kf_2 = 0.150 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a_2 = 3.61e-3; // diffusivity in ft^2/hr 
Pr_2 = 51; // Prandtl Number 
m_2=12000; // mass flow rate in lbm/hr
T_2=85; // temperature in degree F
// specifications of seamless copper  water tubing  (subscripts: a = annulus, p = inner pipe or tube) from appendix table F2
ID_a=0.1674;
ID_p=0.1076;
OD_p=1.375/12;
// Flow Areas
A_p=%pi*ID_p^2/4;
A_a=%pi*((ID_a)^2-(OD_p)^2)/4;
printf("\nThe area of annulus is %.5f sq.ft",A_a);
printf("\nThe area of inner pipe is %.5f sq.ft",A_p);
if A_a>A_p then
    printf("\nAir flows through annulus");
    else printf("\ncarbon dioxide flows through annulus");
end
// Annulus Equivalent Diameters
D_h=ID_a-OD_p;
D_e=(ID_a^2-OD_p^2)/(OD_p);
printf("\nThe Annulus Equivalent Diameter for friction is %.4f ft",D_h);
printf("\nThe Annulus Equivalent Diameter for heat transfer is %.4f ft",D_e);
// Reynolds Numbers 
Re_1=(m_1/3600)*(ID_p)/(v_1*rou_1*A_p);
printf("\nThe Reynolds Number for water is %.1e",Re_1);
Re_2=(m_2/3600)*(D_e)/(v_2*rou_2*A_a);
printf("\nThe Reynolds Number for ethylene glycol is %.2e",Re_2);
// Nusselt numbers
Nu_1=0.023*(Re_1)^(4/5)*(Pr_1)^0.3;
Nu_2=0.023*(Re_2)^(4/5)*(Pr_2)^0.4;
printf("\nThe Nusselt number for water is %d",Nu_1);
printf("\nThe Nusselt number for ethylene glycol is %d",Nu_2);
// Convection Coefficients 
h_1i=Nu_1*kf_1/ID_p;
h_1o=h_1i*ID_p/OD_p;
h_2=Nu_2*kf_2/D_e;
printf("\nThe convective coefficient for water based on inner diameter is %d BTU/(hr.ft^2.degree R)",h_1i);
printf("\nThe convective coefficient for water based on outer diameter is %d BTU/(hr.sq.ft.degree R)",h_1o);
printf("\nThe convective coefficient for ethylene glycol is %d BTU/(hr.sq.ft.degree R)",h_2);
// Exchanger Coefficient 
Uo=1/((1/h_1o)+(1/h_2));
printf("\nThe overall exchanger coefficient is %d BTU/(hr.sq.ft.degree R)",Uo);
R=(m_2*cp_2)/(m_1*cp_1);
L=20;
A=%pi*OD_p*L;
printf("\nThe ratio is %.2f and area is %.1f sq.ft",R,A);
T1=195;
t1=85;
T2=((T1*(R-1))-(R*t1*(1-exp((Uo*A*(R-1))/(m_2*cp_2)))))/(R*exp(Uo*A*(R-1)/(m_2*cp_2))-1);
printf("\nThe temperature T2=%d degree F",T2);
t2=t1+(T1-T2)/R;
printf("\nThe outlet temperature of Ethylene glycol is %.1f degree F",t2);
