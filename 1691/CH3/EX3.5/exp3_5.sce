//Example 3.5
clc
disp("(a) For a silicon transistor,")
disp("V_Y = 0.5 V,  V_BE2 = 0.6 V,  V0 = 0.7 V,  V_CE(sat) = 0.3 V")
disp("This is a practical circuit")
disp("Therefore,  V_CC2 = V_CC = 30 V")
vbb=60/3
format(3)
disp(vbb,"V_BB(in V) = R2*V_CC / R1+R2 =")
vcc1=15+10
format(4)
disp(vcc1,"and  V_CC1(in V) = (R''''/R''+R'''')*V_CC + (R''/R''+R'''')*V_BB =")
disp("R_C1 = R''*R'''' / R''+R'''' = 550 ohm")
disp("Assume that Q1 saturates and Q2 is in active region.")
disp("I_C2 = V_CC1/R_e  and  R_e = R_e1 || R_e2 = 1.65 k-ohm")
ic2=25/1.65
format(6)
disp(ic2,"Therefore,  I_C2(in mA) =")
ib2=15.15/30
disp(ib2,"I_B2(in mA) =")
mul=0.505*0.55
disp(mul,"Therefore,  I_B2*R_C1(in V) =")
mull=15.15*0.22
disp(mull,"and  I_C2*R_C2(in V) =")
disp("The highest level of V_EN1 is V1 given by,")
v1=25-0.277-0.6-0.3+0.5
disp(v1,"V1(in V) = V_CC1 - I_B2*R_C1 - V_BE2 - V_CE(sat) + V_Y =")
disp("The lowest level of V_EN1 is,")
ven1=20-0.7
disp(ven1,"V_EN1(t_-1)(in V) = V_BB - V0 =")
vcn1=20-0.7+0.3
disp(vcn1,"V_CN1(t_-1)(in V) = V_BB - V0 - V_CE(sat) =")
format(7)
vcn=25-0.277
disp(vcn,"V_CN1(t_+1)(in V) = V_CC1 - I_B2*R_C1 =")
disp("V_CN1 = V_BN2")
ven2=19.6-0.5
disp(ven2,"V_EN(t_-1)(in V) = V_BN2(t_-1) - V_Y =")
ven=25-0.277-0.6
disp(ven,"V_EN(t_+1)(in V) = V_CC1 - I_B2*R_C1 - V_BE2 =")
vd=24.123-19.1
disp(vd,"V_D(in V) = V_EN2(t_+1) - V_EN2(t_-1) =")
disp("(b) The frequency of oscillations,")
disp("f = 1/T = 1/T1+T2")
t1=((3.3*0.1*10^-3)*log(24.323/19.5))*10^6
format(6)
disp(t1,"T1(in usec) = R_e1*C*ln(V1/V_BB-V_Y) =")
disp("and  T2 = T1  as  R_e1 = R_e2")
t=(2*72.93)*10^-3
format(7)
disp(t,"Therefore,  T(in ms) = 2*T1 =")
f=1/0.1458
format(7)
disp(f,"Therefore,  f(in kHz) = 1/T =")
