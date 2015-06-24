//Example 16.16.
clc
format(6)
disp("Referring to fig. 16.40.")
disp("    UTP = VB2 = 5 V")
ve=5-0.7  // in volts
disp(ve,"Voltage across RE is VE(V) = VB2 - VBE =")
disp("    IE = IC = 2 mA")
re=4.3/2 // in k-ohm
disp(re,"    RE(k-ohm) = VE / IE =")
disp("Taking Q2 saturated, VCE(sat) = 0.2 V typically,")
x=12-4.3-0.2  // in volts
disp(x,"     IC*RC2 = VCC - VE - VCE(sat) =")
rc2=7.5/(2)  // in k-ohm
disp(rc2,"     RC2(k-ohm) =")
i2=0.1*2  // in mA
disp(i2,"     I2(mA) = 0.1*IC2 =")
r2=5/0.2  // in k-ohm
disp(r2,"     R2(k-ohm) = VB2 / I2 =")
ib2=(2*10^-3)/100  // in A
x1=ib2*10^6  // in uA
disp(x1,"     IB2(uA) = IC2 / hfe(min) =")
disp("     I1 = I2 + IB2")
disp("VCC-VB2 / RC1+R1 = I1 = 0.2*10^-3 + 20*10^-6")
disp("12-5 / RC1+R1 = 0.22*10^-3")
x=7/(0.22)  // in k-ohm
format(5)
disp(x,"RC1 + R1 =")
disp("When    Q1 is ON, Vi = LTP = VB2 = 3 V")
i1=3/25 // in mA
format(6)
disp(i1,"  I1(mA) = VB2 / R2 =")
ic1=(3-0.7)/2.15  // in mA
disp(ic1,"  IC1(mA) = IE = VB1-VBE / RE =")
disp("  VCC = RC1*(IC1+I1) + I1*(R1+R2)")
rc1=(12-((0.12*10^-3)*(56.8*10^3)))/(1.07*10^-3)  // in  ohm
x1=rc1*10^-3  // in k-ohm
format(5)
disp(x1,"Therefore,  RC1(k-ohm) =")
r1=31.8-4.84
format(6)
disp(r1,"  R1(k-ohm) =")
rb=(100*2.15)/10
disp("  RB < hfe*RE")
disp(rb,"  RB(k-ohm) = hfe*RE / 10 =")