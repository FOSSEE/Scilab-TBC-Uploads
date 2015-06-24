// Example 6.8 : Analysis of CMOS CS amplifier
k_n=200*10^-6; // (A/V^2)
W=4*10^-6; // (m)
L=0.4*10^-6; // (m)
I_REF=100*10^-6; // (A)
V_An=20; // (A)
I_D1=0.1*10^-3; // (A)
V_Ap=10; // (V)
V_DD=3; // (V)
I_D2=0.1*10^-3; // (A)
V_tp=0.6; // (V)
V_tn=0.6; // (V)
g_m1=sqrt(2*k_n*(W/L)*I_REF);
disp(g_m1,"g_m1 (A/V)")
r_o1=V_An/I_D1;
disp(r_o1,"r_o1 (ohm)")
r_o2=V_Ap/I_D2;
disp(r_o2,"r_o2 (ohm)")
A_v=-g_m1*r_o1*r_o2/(r_o1+r_o2);
disp(A_v,"A_v (v/V)")
I_D=100*10^-6; // (A)
k_n=65*10^-6; // (A/V^2)
V_OV3=0.53; // (V)
V_SG=V_tp+V_OV3;
disp(V_SG,"V_SG (V)")
V_OA=V_DD-V_OV3;
disp(V_OA,"V_OA (V)")
V_IB=0.93; // (V)
V_IA=0.88; // (V)
disp(V_IA,V_IB,"Coordinates of the extremities of the amplifier V_IB and V_IA")
deltavI=V_IB-V_IA; // width of amplifier region
V_OB=0.33; // (V)
deltavO=V_OB-V_OA; // corresponding output range (V)
deltavObydeltavI=-deltavO/deltavI; // Large signal voltage gain (V/V)
disp(deltavObydeltavI,"Large signal voltage gain (V/V)")