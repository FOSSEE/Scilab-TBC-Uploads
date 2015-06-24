//Example 3.1
clc
disp("The circuit is similar to the circuit shown in the fig 3.2. Assume that Q1 is OFF and Q2 is ON")
disp("Case i : Junction voltages of ON transistor are neglected")
disp("i.e.  V_CE2 = 0 V and V_BE2 = 0 V")
disp("As emitter is grounded we can say,")
disp("  V_C2 = 0 V and V_B2 = 0")
disp("Now draw the equivalent circuit in a part from base of Q1 to the collector of Q2 as shown in fig. 3.4(a)")
vb1=-8*(10/60)
format(5)
disp(vb1,"Now  V_B1(in V) = - V_BB * (R1 / R1+R2) =")
disp("As V_B1 < V_BE (cut-off) i.e. 0.7 V, it ensures that Q1 is OFF. To verify whether Q2 is ON or not, calculate I_C2")
i1=12/(2.2)
disp(i1,"I1(in mA) = V_CC/R_C = ")
i2=(8/60)
format(6)
disp(i2,"I2(in mA) = V_BB / R1+R2 = ")
ic=5.45-0.133
disp(ic,"Therefore,  I_C2(in mA) = I1 - I2 =")
ib=(5.316/30)*10^3
disp(ib,"Therefore,  (I_B2)min(in mA) = I_C2 / h_fe(min) =")
disp("Now to calculate actual I_B2 and verify that I_B2 > I_B2(min) let us draw part of circuit showing collector of Q1 to base of Q2")
disp("Now  I3 = current through R_C and R1, as I_C1 = 0")
i3=12/12.2
format(7)
disp(i3,"Therefore,  I3(in mA) = V_CC / R_C+R1 =            ...as  V_B2 = 0 V")
i4=8/50
format(5)
disp(i4,"and  I4(in mA) = V_B2-V_BB / R2 =")
ib2=0.9836-0.16
format(7)
disp(ib2,"Therefore,  I_B2(in mA) = I3 - I4 =")
disp("As I_B2 > I_B2(min), the transistor Q2 is indeed in saturation")
vc1=12-(0.98396*2.2)
format(6)
disp(vc1,"Therefore,  V_C1(in V) = V_CC - I3*R_C =")
disp("Hence the stable state current and voltages are:")
disp("I_C1 = 0 A      I_C2 = 5.316 mA      I_B1 = 0 A       I_B2 = 0.8236 mA")
disp("V_C1 = 9.836 V  V_C2 = 0 V           V_B1 = -1.33 V   V_B2 = 0 V")
disp("Output swing = V_C1 - V_C2")
disp("Therefore,  V_W = 9.836 V")
disp("")
disp("Case ii : V_CE(sat) = 0.2 V  and  V_BE(sat) = 0.7 V")
disp("For the transistor Q2, as emitter is grounded, from these voltages we can write,")
disp("  V_C2 = 0.2 V  and  V_B2 = 0.7 V")
disp("Referring to fig 3.4(a), we can write the equations to obtain the stable state currents and voltages")
disp("Now V_B1 will be due to V_BB and V_C2 hence using superposition principle, considering effect of each independently we can write,")
vb1=(-8*(10/60))+(0.2*(50/60))
format(5)
disp(vb1,"V_B1 = -V_BB(R1 + R1+R2)|V_C2=0 + V_C2(R2 / R1+R2)|V_BB=0 =")
i1=11.8/2.2
disp(i1,"I1(in mA) = V_CC-V_C2 / R_C =")
i2=8.2/60
format(6)
disp(i2,"I2(in mA) = V_C2+V_BB / R1+R2 =")
ic2=5.36-0.136
disp(ic2,"Therefore,  I_C2(in mA) = I1 - I2 =")
ib2=5.223/30
disp(ib2,"Therefore,  I_B2(min)(in mA) = I_C2 / h_fe(min) =")
disp("To calculate I_B2, refer fig.3.4(b), with V_B2 = 0.7 V")
i3=11.3/12.2
disp(i3,"Therefore,  I3(in mA) = V_CC-V_B1 / R_C+R1 =")
i4=8.7/50
disp(i4,"and  I4(in mA) = V_B2-V_BB / R2 =")
ib2=0.926-0.174
disp(ib2,"Therefore,  I_B2(in mA) = I3 - I4 =")
vc1=12-(0.926*2.2)
format(7)
disp(vc1,"Therefore,  V_C1(in V) = V_CC - I3*R_C =")
disp("Hence the stable state current and voltages are:")
disp("I_C1 = 0 A        I_C2 = 5.223 mA      I_B1 = 0 mA      I_B2 = 0.752 mA")
disp("V_C1 = 9.9628 V   V_C2 = 0.2 V         V_B1 = -1.16 V   V_B2 = 0.7 V")
vw=9.9628-0.2
disp(vw,"V_W(in V) = V_C1 - V_C2 =")
