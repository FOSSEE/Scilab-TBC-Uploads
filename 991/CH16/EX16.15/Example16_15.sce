//Example 16.15.
clc
format(5)
disp("Referring to fig.16.37.")
vb1=(-12*15*10^3)/(115*10^3)  // in volts
disp(vb1,"      VB1(V) = -VBB*R2 / R2+R3 =")
disp("Since VB1 is less than VBE(cut-off), i.e. 0.7 V for silicon transistor, Q1 is OFF.")
disp("Therefore,    IB1 = 0 and IC1 = 0")
disp("               I2 = I4 + IC2")
disp("              IC2 = I2 - I4")
ic2=((12-0.3)/(2.2*10^3))-((0.3+12)/(115*10^3)) // in A
x1=ic2*10^3  // in mA  (Since Q2 is ON VC2(sat) = 0.3 V)
disp(x1,"          IC2(mA) = [VCC-VC2(sat) / RC2] - [VC2(sat)-(-VBB) / R2+R3] =")             // answer in textbook is wrong
ib2=(5.35*10^-3)/20  // in A
x1=ib2*10^3  // in mA
disp(x1,"      IB2 > IC2 / hfe(min) >")  // approximately 0.5 mA
disp("        I1 = I3 + IC1")
disp("           = I3, as IC1 = 0")
disp("        I3 = IB2 + I6")
disp("        I6 = VB2-(-VBB) / R4")
disp("       VB2 = VBE2(on) = 0.7 V")
format(6)
i6=(0.7+12)/(100)  // in mA
disp(i6,"Therefore,  I6(mA) =")
i3=0.5+0.127  // in mA
disp(i3,"            I3(mA) =")
vc1=12-((0.627*10^-3)*(2.2*10^3))
disp(vc1,"            VC1(V) =")