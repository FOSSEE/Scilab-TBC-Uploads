//Example 18.18. refer fig.18.27
clc
format(6)
rlmin=20/(50*10^-3)  // in ohm
disp("Selection of Zener diode")
disp(rlmin,"  RLmin(ohm) = Vo / ILmax =")
vz=20/2  // in V
disp(vz,"  Vz(V) = Vo / 2 =")
disp("Hence, the zener diode 0.5Z10 is chosen.")
disp("Since,  IR1 > IB2, IR1 > IC2/beta, IR2 > 10*10^-3 / 150")
disp("        IR1 > 66.7 uA")
disp("Let  IR1 = IR2 = IR3 = 10 mA (neglecting IB2)")
disp("Let  IC2 = IE2 = 10 mA")
disp("So, the current flowing through the Zener,")
iz=10+10  // in mA
disp(iz,"  Iz(mA) = IE2 + IR1 =")
pz=10*20*10^-3  // in W
disp(pz,"  Pz(W) = Vz*Iz =")  // > 0.5 W
disp("Hence selection of 0.5Z10 Zener diode is confirmed")
disp("")
disp("Selection of transistor Q1")
ie1=10+10+50  // in mA
disp(ie1,"  IE1(mA) = IR1 + IR2 + IL =")
disp("  Vi(max) - Vo = 30 -20 = 10 V")
disp("For transistor SL100, the rating are")
disp("    IC(max) = 500 mA")
disp("   VCE(max) = 50 V")
disp("        hre = 50 - 280")
disp("Hence, SL100 can be chosen for Q1")
disp("")
disp("Selection of transistor Q2")
disp("  From the fig.,  VCE2(max) + Vz = (V0 + VBE1)")
vce2=20.6-10  // in V
disp(vce2,"  Therefore,  VCE2_max(V) = (Vo + VBE1) - Vz =")
disp("For transistor BC107, the rating are")
disp("    VCEO(max) = 45 V")
disp("      IC(max) = 200 mA")
disp("          hFE = 125 - 300")
disp("Hence, transistor BC107 is selected for Q2")
disp("")
disp("Selection of resistor R1, R2 and R3")
vr1=20-10  // in V
disp(vr1,"  VR1(V) = Vo - Vz =")
r1=10/(10)  // in k-ohm
disp(r1,"  R1(k-ohm) = VR1 / IR1 =")
vr2=20-10.6  // in V
disp(vr2,"  VR2(V) = Vo - VR3 =")
r2=9.4/(10*10^-3)  // in ohm
disp(r2,"  R2(ohm) = VR2 / IR2 =")
vr3=10+0.6  // in V
disp(vr3,"  VR3(V) = Vz + VBE2(sat) =")
r3=10.6/(10*10^-3)  // in ohm
disp(r3,"  R3(ohm) = VR3 / IR3 =")
disp("")
disp("Selection of resistor R4")
vb1=20+0.6  // in V
disp(vb1,"  VB1(V) = VC2(V) = Vo + VBE1 =")
ib1=70/50  // in mA
disp(ib1,"  IB1(mA) = IC1 / beta =")
ir4=11.4  // in mA
disp(ir4,"  IR4(mA) = IB1 + IC2 =")
format(5)
r4max=(30-20.6)/(11.4*10^-3)  // in ohm
disp(r4max,"  R4_max(ohm) = VR4(max) / IR4 = Vi(max)-VB1 / IR4 =")
r4min=(22-20.6)/(11.4*10^-3)  // in ohm
disp(r4min,"  R4_min(ohm) = VR4(min) / IR4 = Vi(min)-VB1 / IR4 =")
format(6)
r4=(825+123)/2  // in ohm
disp(r4,"  R4(ohm) = R4(max)+R4(min) / 2 =")