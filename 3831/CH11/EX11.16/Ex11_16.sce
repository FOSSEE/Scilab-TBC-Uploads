// Example 11_16
clc;funcprot(0);
// Given data
p_1=150;// psia
p_2=15.0*10^3;// psia
T_1=80.0;// °F
T_2=T_1;// °F

// Calculation
// (a)
// The properties of ethylene at its critical state and its molecular mass are found in Table C.12a as
T_c=508.3;// R
p_c=742;// psia
M=28.05;// lbm/lbmoles
p_R1=p_1/p_c;
T_R1=(T_1+459.67)/T_c;
p_R2=p_2/p_c;
T_R2=T_R1;
// Using p_R1 and T_R1, Figure 11.9 gives the enthalpy correction for state 1 as
// Assume s_1=[(h*-hbar)/T_c]_1
s_1=1.50;// kJ/kgmole.K
s_1=s_1*(1/4.1865);// Btu/(lbmole.R)
// Using p_R2 and T_R2, Figure 11.9 gives the enthalpy correction for state 2 as
// Assume s_2=[(h*-hbar)/T_c]_2
s_2=31.5;// kJ/kgmole.K
s_2=s_2*(1/4.1865);// Btu/(lbmole.R)
// h*2-h*1=0;
// dh=h_2-h_1;
dh=0-([s_2-s_1]*(T_c/M));// Btu/lbm
// (b)
p_R1=0.202;
T_R1=1.06;
Z_1=0.940;
p_R2=20.2;
T_R2=T_R2;
Z_2=2.15;
R=55.1;// ft.lbf/(lbm.R)
v_1=(Z_1*R*(T_1+459.67))/(p_1*144);// ft^3/lbm
v_2=(Z_2*R*(T_2+459.67))/(p_2*144);// ft^3/lbm
du=dh-(((p_2*144)*v_2*(1/778.16))-((p_1*144)*v_1*(1/778.16)));// Btu/lbm
// (c)
// s*2-s*1=dS;
dS=(c_p*log(T_2/T_1))-((R/778.16)*log(p_2/p_1));// Btu/lbm.R
// Using p_R1 and T_R1, Figure 11.11 gives the entropy correction for state 1 as
// Assume (s*bar-sbar)_1=S_1
S_1=1.50;// kJ/kgmole.K
S_1=S_1*(1/4.1865);// Btu/(lbmole.R)
// Using p_R2 and T_R2, Figure 11.11 gives the entropy correction for state 2 as
S_2=2.22;// kJ/kgmole.K
S_2=S_2*(1/4.1865);// Btu/(lbmole.R)
// d_s=S_1-S_2
ds=dS-([S_2-S_1]*(1/M));// Btu/(lbm.R)
printf("\n(a)The change in specific enthalpy,h_2-h_1=%3.0f Btu/lbm \n(b)The change in specific internal energy,u_2-u_1=%3.0f Btu/lbm \n(c)The change in specific entropy of the ethylene,s_2-s_1=%0.3f Btu/lbm.R",dh,du,ds);
// The answer vary due to round off error
