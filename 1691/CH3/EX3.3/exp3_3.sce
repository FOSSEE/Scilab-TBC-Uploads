//Example 3.3
clc
disp("Assume Q2 ON and Q1 in OFF condition")
disp("Therefore,  I_C2 = I_C(sat) = 6 mA")
disp("Now  I_C2 = V_CC-V_CE(sat)/R_C")
disp("For the silicon npn transistors,")
disp("V_CE(sat) = 0.3 V, V_BE(sat) = V_0 = 0.7 V")
disp("V_BE(cut-in) = V_T = 0.5 V")
rc=(5.7*10^3)/6
format(4)
disp(rc,"R_C(in ohm) =")
ib2s=6/20
disp(ib2s,"(I_B2)sat (in mA) = I_C(sat)/(h_fe)min =")
disp("Therefore,  (I_B1)sat = 0.3 mA")
disp("Now  I_B2 = V_CC-V_BE(sat)/R")
r=5.3/0.3
format(6)
disp(r,"Therefore,  R(in k-ohm) =")
disp("In quasi-stable, Q1 is ON and Q2 is OFF")
disp("T = 0.69 RC")
c=120/(0.69*17.67)
format(5)
disp(c,"Therefore,  C(in nF) =")
disp("Consider the equivalent circuit in quasi-state(see fig 3.19)")
disp("As Q2 is OFF, V_C2 = V_CC")
disp("Therefore,  I3 = V_CC-V0/R1 = 5.3/R1")
disp("and  I4 = V0-V_BB/R2 = 2.2/R2")
disp("Assume I4 = (I_B1)sat = 0.3 mA")
r2=2.2/0.3
format(5)
disp(r2,"Therefore,  R2(in k-ohm) =")
i3=0.3+0.3
disp(i3,"and  I3(in mA) = I4 + I_B1 =")
r1=5.3/0.6
format(6)
disp(r1,"Therefore,  R1(in k-ohm) = ")
disp("The speed-up capacitor C1 can be chosen such that R1C1 = 1 usec hence")
c1=1000/8.833
format(7)
disp(c1,"C1(in pF) = ")
rb=(5.5/1100)*10^3
disp(rb,"Now  r''_B(in mA) = V_CC-V_CE(sat)-V0-V_Y / R_C+r''_bb =")
del=(150*5*10^-3)+0.2
disp(del,"Therefore,  delta(in V) = Overshoot = I''_B*r''_bb + V0 - V_Y =")
