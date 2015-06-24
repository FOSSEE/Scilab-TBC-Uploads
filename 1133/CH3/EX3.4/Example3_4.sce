//Example 3.4
clc
disp("Step 1: Identity topology")
disp("  The feedback voltage is applied across the resistance R_e1 and it is in series with input signal. Hence feedback is voltage series feedback.")
disp("")
disp("Step 2 and Step 3: Find input and output circuit.")
disp("  To find input circuit, set Vo = 0 (connecting C2 to ground), which gives parallel combination of Re with Rf at E1. To find output circuit, set Ii = 0 (opening the input node E1 at emitter of Q1), which gives series combination of Rf and Re1 across the output. The resultant circuit is shown in Fig.3.32")
disp("")
disp("Step 4: Find open loop voltage gain(A_v)")
format(5)
rl2=(4.7*10.1)/(4.7+10.1) // in k-ohm
disp(rl2,"  R_L2(in k-ohm) = R_c2 || (R_e1+Rf) =")
disp("  A_i2 = -hfe = -100")
disp("  R_i2 = hie = 1100 ohm")
format(7)
av2=(-100*3.21*10^3)/1100
disp(av2,"  A_v2 = A_i2*R_L2 / R_i2 =")
disp("  A_i1 = -hfe = -100")
format(5)
rl1=(22*220*22*1.100)/((220*22*1.100)+(22*22*1.100)+(22*220*1.100)+(22*220*22))  // in ohm
disp(rl1*10^3,"  R_L1(in ohm) = R_c1 || R3 || R4 || R_i2 =")
ri1=1.1+(101*((0.1*10)/(0.1+10)))  // in k-ohm
format(5)
disp(ri1,"  R_i1(in k-ohm) = hie + (1+hfe)*R_e1eff =             where Re1eff = (R_e1 || Rf)")
av1=(-100*995)/(11.099*10^3)
disp(av1,"Therefore,  A_v1 = A_i1*RL1 / Ri1 =")
disp("The overall voltage gain without feedback is given as,")
av=-291.82*-8.96
format(7)
disp(av,"  Av = A_v1 * A_v2 =")
disp("The overall voltage gain taking Rs in account is given as,")
aV=(2614.7*11.099*10^3)/((11.099*10^3)+100)
format(8)
disp(aV,"  Av = Vo / Vs = Av*R_i1 / R_i1+Rs =")
disp("")
disp("Step 5: Calculate beta")
disp("Looking at Fig.3.33.")
beta=100/(100+(10*10^3))
format(7)
disp(beta,"  beta = Vf / Vo =")
d=1+(0.0099*2591.35)
format(6)
disp(d,"  D = 1 + beta*Av =")
avf=2591.35/26.65
disp(avf,"  A_vf = Av/D =")
rif=26.65*11.099  // in k-ohm
format(8)
disp(rif,"  R_if(in k-ohm) = R_i1 * D =")
riff=(295.788*220*22)/((220*22)+(295.788*22)+(295.788*220))  // in k-ohm
format(6)
disp(riff,"  R''_if(in k-ohm) = R_if || R1 || R2 =")
disp("  R_of = Ro / D = infinity / D = infinity")
disp("Therefore,  R''_of = R''_o / D          where R''_o = R_L2")
roff=(3.21*10^3)/26.65  // in omh
format(7)
disp(roff,"Therefore,  R''_of(in ohm) = ")