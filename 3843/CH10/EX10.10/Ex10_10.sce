// Example 10_10
clc;funcprot(0);
// Given data
T_1=-50;// °C
P_1=2;// MPa
T_2=40;// °C
P_2=6;// MPa
c_p=1.042;// kJ/kg.K
c_v=0.745;// kJ/kg.K
R=0.297;// kJ/kg.K
M=28;// The molecular weight of nitrogen in kg/kmol

// Calculation
// (a)
dh=c_p*(T_2-T_1);// The enthalpy change in kJ/kg
du=c_v*(T_2-T_1);// The change in internal energy in kJ/kg
ds=(c_p*log((T_2+273)/(T_1+273)))-(R*log(P_2/P_1));// The entropy change in kJ/kg.K
printf("\n(a)The enthalpy change,dh=%2.1f kJ/kg \n   The change in internal energy,du=%2.0f kJ/kg \n   The entropy change,ds=%0.2f kJ/kg.K",dh,du,ds);
// (b)
// Interpolating in the ideal gas table (Table F-2) gives
h_1=6479;// kJ/kmol
h_2=9102;// kJ/kmol
dh=(h_2-h_1)/M;// The enthalpy change in kJ/kg
u_1=4625;// kJ/kmol
u_2=6499;// kJ/kmol
du=(u_2-u_1)/M;// The change in internal energy in kJ/kg
phi_1=183.0;// kJ/kmol.K
phi_2=192.9;// kJ/kmol.K
ds=((phi_2-phi_1)/M)-(R*log(P_2/P_1));// The entropy change in kJ/kg.K
printf("\n(b)The enthalpy change,dh=%2.1f kJ/kg \n   The change in internal energy,du=%2.0f kJ/kg \n   The entropy change,ds=%0.2f kJ/kg.K",dh,du,ds);
// (c)
// Using (10.69) and the enthalpy departure chart in Appendix I we find
T_c=126.2;// K
T_R1=(T_1+273)/T_c;// The reduced temperature at state 1
T_R2=(T_2+273)/T_c;// The reduced temperature at state 2
P_c=3.39;// MPa
P_R1=P_1/P_c;// The reduced pressure at state 1
P_R2=P_2/P_c;// The reduced pressure at state 2
// The enthalpy departure chart(Appendix I) provides us with
// Assume dh_s1=(hbar*_1-hbar_1)/T_c,dh_s2=(hbar*_2-hbar_2)/T_c,dh_1=h*_1-h_1,dh_2=h*_2-h_2,
dh_s1=1.6;// kJ/kmol.K
dh_s2=2.5;// kJ/kmol.K
dh_1=(dh_s1*T_c)/M;// kJ/kg
dh_2=(dh_s2*T_c)/M;// kJ/kg
dh=-dh_1+dh_2+[c_p*(T_2-T_1)];// The enthalpy change in kJ/kg
// Using Compressibility chart,
Z_1=0.99;// The Compressibility factor at state 1
Z_2=0.985;// The Compressibility factor at state 2
du=dh-[R*((Z_2*(T_2+273))-(Z_1*(T_1+273)))];// The change in internal energy in kJ/kg
// Assume ds_s1=(sbar*_1-sbar_1),ds_s2=(sbar*_2-sbar_2),ds_1=s*_1-s_1,ds_2=s*_2-s_2,
ds_s1=1.0;// kJ/kmol.K
ds_s2=1.2;// kJ/kmol.K
ds_1=ds_s1/M;// kJ/kg.K
ds_2=ds_s2/M;// kJ/kg.K
ds=-ds_1+ds_2+((c_p*log((T_2+273)/(T_1+273)))-(R*log(P_2/P_1)));// The entropy change in kJ/kg.K
printf("\n(c)The enthalpy change,dh=%2.1f kJ/kg \n   The change in internal energy,du=%2.0f kJ/kg \n   The entropy change,ds=%0.2f kJ/kg.K",dh,du,ds);
