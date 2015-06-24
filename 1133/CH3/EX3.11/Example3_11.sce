//Example 3.11
clc
disp("Step 1: Identify topology")
disp("  The feedback voltage is applied across the resistance R_e1 and it is in series with input signal. Hence feedback is voltage series feedback.")
disp("")
disp("step 2 and Step 3: Find input and output circuit.")
disp("  To find input circuit, set Vo = 0 (connecting C2 to ground), which gives parllel combination of Re with Rf at E1. To find output ciruit, set Ii = 0 (opening the input node E1 at emitter of Q1), which gives series combination od Rf and R_e1 across the output. The resultant circuit is shown in fig.3.57")
disp("")
disp("Step 4: Find open loop voltage gain (Av)")
rl2=(4.7*3.42)/(4.7+3.42)  // in k-ohm
format(5)
disp(rl2,"  R_L2(in k-ohm) = R_c2 || (Rs+R) =")
disp("  A_i2 = -hfe = -50")
disp("R_i2 = hie = 1000 ohm = 1 k-ohm")
av2=-50*1.98
format(3)
disp(av2,"  A_v2 = A_i2*R_L2 / R_i2 =")
disp("  A_i1 = -hfe = -50")
format(7)
rl1=((10*100*22*1)/((100*22)+(10*22)+(10*100)+(10*100*22)))*10^3  // in ohm
disp(rl1,"  R_L1(in ohm) = R_c1 || R3 || R4 || R_i2 =")
disp("  R_i1 = h_ie + (1+h_fe)*R_e1eff")
re1=1+(51*((3.3*0.12)/(3.42)))  // in k-ohm
format(4)
disp(re1,"where  R_e1eff(in k-ohm) = Rs || R =")
av1=(-50*865.46)/6900
format(5)
disp(av1,"  A_v1 = A_i1*R_L1 / R_i1 =")
disp("The overall voltage gain,")
av=-6.27*-99
format(7)
disp(av,"  Av = A_v1 * A_v2 =")
disp("")
disp("Step 5: Calculate beta")
beta=120/(120+3300)
format(6)
disp(beta,"  beta = Vf / Vo = Rs / Rs+R =")
disp("")
disp("Step 6: Calculate D, A_vf, R_if, R_of and R''_of")
d=1+(0.035*620.73)
format(7)
disp(d,"  D = 1 + Av*beta =")
avf=620.73/22.725
format(5)
disp(avf,"  A_vf = Av / D =")
rif=6.9*22.725  // in k-ohm
format(6)
disp(rif,"  R_if(in k-ohm) = R_i1 * D =")
disp("  R_of = Ro / D = infinity")
rof=(1.98*10^3)/22.725  // in ohm
disp(rof,"  R''_of(in ohm) = R''o / D = R_L2 / D =")
