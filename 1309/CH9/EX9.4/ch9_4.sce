clc;
clear;
printf("\t\t\tChapter9_example4\n\n\n");
// Determination of (a) no. of exchangers required, (b)  the overall  coefficient of (all) the exchanger(s), and (c) the pressure drop for each stream. 
// assuming counterflow arrangement
// properties of air at 323 K. from appendix table D1
rou_1= 1.088; // density in kg/m^3 
cp_1= 1007; // specific heat in J/(kg*K) 
v_1= 18.2e-6; // viscosity in m^2/s  
Pr_1 =0.703; // Prandtl Number 
kf_1= 0.02814; // thermal conductivity in W/(m.K)
a_1 = 0.26e-4; // diffusivity in m^2/s 
m_1=100; // mass flow rate in kg/hr
// temperatures in K
t1_air=20+273; 
t2_air=80+273;
// properties of carbon dioxide at [600 + (20 + 273)]/2 = 480 = 500 K. from appendix table D2
rou_2= 1.0732; // density in kg/m^3 
cp_2= 1013; // specific heat in J/(kg*K) 
v_2= 21.67e-6; // viscosity in m^2/s  
Pr_2 =0.702; // Prandtl Number 
kf_2= 0.03352; // thermal conductivity in W/(m.K)
a_2 = 0.3084e-4; // diffusivity in m^2/s 
m_2=90; // mass flow rate in kg/hr
// temperatures in K
T1_CO2=600; 
// specifications of seamless copper tubing from appendix table F2
ID_a=.098;
ID_p=.07384;
OD_p=.07938;
// Flow Areas
A_p=%pi*ID_p^2/4;
A_a=%pi*((ID_a)^2-(OD_p)^2)/4;
printf("\nThe area of annulus is %.2e sq.m",A_a);
printf("\nThe area of inner pipe is %.2e sq.m",A_p);
if A_a>A_p then
    printf("\nAir flows through annulus");
    else printf("\nair flows through inner pipe");
end
// Heat Balance 
q_air=(m_1/3600)*(cp_1)*(t2_air-t1_air);
printf("\nThe heat transferred is %.2e W",q_air);
T2_CO2=T1_CO2-(q_air/(m_2*cp_2/3600));
printf("\nThe low temperature of carbon dioxide is %d K",T2_CO2);
// Log-Mean Temperature Difference
LMTD_counter=((T1_CO2-t2_air)-(T2_CO2-t1_air))/(log((T1_CO2-t2_air)/(T2_CO2-t1_air)));
printf("\nThe LMTD for counter flow configuration is %d degree C",LMTD_counter);
// Annulus Equivalent Diameters
D_h=ID_a-OD_p;
D_e=(ID_a^2-OD_p^2)/(OD_p);
printf("\nThe Annulus Equivalent Diameter for friction is %.5f m",D_h);
printf("\nThe Annulus Equivalent Diameter for heat transfer is %.4f m",D_e);
// Reynolds Numbers 
Re_1=(m_1/3600)*(ID_p)/(v_1*rou_1*A_p);
printf("\nThe Reynolds Number for air is %.2e",Re_1);
Re_2=(m_2/3600)*(D_e)/(v_2*rou_2*A_a);
printf("\nThe Reynolds Number for carbon dioxide is %.2e",Re_2);
// Nusselt numbers
Nu_1=0.023*(Re_1)^(4/5)*(Pr_1)^0.3;
Nu_2=0.023*(Re_2)^(4/5)*(Pr_2)^0.4;
printf("\nThe Nusselt number for air is %.1f",Nu_1);
printf("\nThe Nusselt number for carbon dioxide is %.1f",Nu_2);
// Convection Coefficients 
h_1i=Nu_1*kf_1/ID_p;
h_1o=h_1i*ID_p/OD_p;
h_2=Nu_2*kf_2/D_e;
printf("\nThe convective coefficient for air based on inner diameter is %.1f W/(sq.m.K)",h_1i);
printf("\nThe convective coefficient for air based on outer diameter is %.1f W/(sq.m.K)",h_1o);
printf("\nThe convective coefficient for carbon dioxide is %.1f W/(sq.m.K)",h_2);
// Fouling Factors in (m^2.K)/W
Rd_air=.0004;
Rd_CO2=0.002;
// exchanger coefficients
Uo=1/((1/h_1o)+(1/h_2));
Uo=1/((1/Uo)+Rd_air+Rd_CO2);
printf("\nThe overall exchanger coefficient is %.1f W/(sq.m.K)",Uo);
// area required
A=q_air/(Uo*LMTD_counter);
printf("\nThe area required is %.2f sq.m",A);
// surface area of one exchanger is A=%pi*OD*L, so
L=(A/(%pi*OD_p)); // length of each exchanger
L_available=2; // available exchanger length
N=L_available/L; // no. of exchangers
printf("\nThe number of exchangers is %d",N);
//friction factors
fp=0.0245; //friction factor for air fom figure 6.14 corresponding to Reynolds Number calculated above
fa=0.033; //friction factor for carbon dioxide fom figure 6.14 corresponding to Reynolds Number calculated above
// Velocities
V_air=(m_1/3600)/(rou_1*A_p);
V_CO2=(m_2/3600)/(rou_2*A_a);
printf("\nThe velocity of air is %.2f m/s",V_air);
printf("\nThe velocity of carbon dioxide is %.2f m/s",V_CO2);
// pressure drops
dP_p=(fp*L_available*rou_1*V_air^2)/(ID_p*2);
dP_a=((rou_2*V_CO2^2)/2)*((fa*L_available/D_h)+1);
printf("\nThe pressure drop for tube side is %.2f Pa",dP_p);
printf("\nThe pressure drop for shell side is %d Pa",dP_a);
printf("\n\t\t\tSummary of Requested Information\n");
printf("(a) Exchanger required: %d\n(b)Overall exchanger coefficient = %.1f W/(sq.m.K)\n(c)Air pressure drop = %.2f Pa\nDiesel exhaust pressure drop = %d Pa",N,Uo,dP_p,dP_a);
