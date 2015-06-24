//Example 16.14.
clc
format(5)
disp("At stable state, Q2 is ON and Q2 is OFF:")
rc2=(6-0.3)/(6*10^-3) // in ohm
disp(rc2,"    RC2(ohm) = RC1(ohm) = VCC-VCE(sat) / IC(sat) =")
ib2=(6*10^-3)/20 // in ampere
x1=ib2*10^3  // in mA
disp(x1,"IB2(sat)(mA) = IC(sat) / hfe(min) =")
disp("Also,    IB1(sat) = 0.3 mA")
format(6)
r=(6-0.7)/(0.3*10^-3)  // in ohm
x1=r*10^-3  // in k-ohm
disp(x1,"  R(k-ohm) = VCC-VBE(sat) / IB2(sat) =")
disp("                                          [because, VBE(sat) = 0.7 V for Si transistor]")
disp("At quasi-stable state, Q1 is ON and Q2 is OFF")
disp("    T = 0.693*R*C")
format(7)
c=(140*10^-6)/(0.693*17.67*10^3)  // in F
x1=c*10^6  // in uF
disp(x1,"Therefore,      C(uF) = T / 0.693*R =")
format(6)
disp("Assume,    IB1(sat) = IR2")
ir2=0.3+0.3  // in mA
disp(ir2,"Therefore,  IR1(mA) = IB1(sat)+IR2 =")
r1=((6-0.7)/(0.6*10^-3))-950  // in ohm
x1=r1*10^-3  // in k-ohm
disp("    VCC = VBE(sat) + IR1(RC2+R1)")
disp(x1,"Therefore,  R1(k-ohm) = (VCC-VBE(sat) / IR1) - RC2 =")
format(5)
r2=(0.7+1.5)/(0.3*10^-3)  // in ohm
x1=r2*10^-3  // in k-ohm
disp(x1,"    R2(k-ohm) = VBE(sat)-(-VBB) / IR2 =")
disp("The speed up capacitor C1 is chosen such that R1C1 = 1 us and hence,")
format(6)
c1=(10^-6)/(7.833*10^3)  // in F
x1=c1*10^12  // in pF
disp(x1,"      C1(pF) =")  // answer in textbook is wrong