//Example 3.10
disp("Step 1: Identify topology")
disp("  By shorting output voltage (Vo = 0), feedback voltage Vf becomes zero and hence it is voltage sampling. The feedback voltage is applied in series with the input voltage hence the topology is voltage series feedback.")
disp("")
disp("Step 2 and Step 3: Find input and output circuit.")
disp("  To find input circuit, set Vo = 0. This places the parallel combination of resistor 10 K and 300 ohm at first source. To find output circuit, set Ii = 0. This places the resistor 10K and 300 ohm in series across the output. The resultant circuit is shown in fig.3.54.")
disp("")
disp("Step 4: Replace FET with its equivalent circuit as shown in fig.3.55.")
disp("")
disp("Step 5: Find open loop transfer gain.")
disp("  Av = Vo / Vs = A_v1 * A_v2")
disp("  A_v2 = -u*R_L2 / R_L2+r_d")
rl2=(10.3*22)/(10.3+22)  // in k-ohm
format(3)
disp(rl2,"where  R_L2(in k-ohm) =")
av2=(-50*7)/17
format(6)
disp(av2,"  A_v2 =")
disp("  A_v1 = u*R_Deff / r_d+R_Deff+(1+u)*R_seff")
rdeff=(22*1000)/(22+1000)  // in k-ohm
disp(rdeff,"  R_Deff(in k-ohm) = R_D || R_G2 =")
disp("  R_seff = 330 || 10K")
av1=(-50*21.53)/(10+21.53+(51*((0.33*10)/(10+0.33))))
disp(av1,"Therefore,  A_v1 =")
av=-20.59*-22.51
disp(av,"  Overall Av = A_v1 * A_v2 =")
disp("")
disp("Step 6: Calculate beta")
beta=330/(330+10000)
format(7)
disp(beta,"  beta = Vf / Vo = Rs / Rs+Rf =")
disp("")
disp("step 7: Calculate D, A_vf, R_if, R''_of")
d=1+(0.0319*463.5)
disp(d,"  D = 1 + Av*beta =")
avf=463.5/15.785
format(6)
disp(avf,"  A_vf = Av / D =")
disp("Ri = R_G = 1 M-ohm")
rif=15.785
format(7)
disp(rif,"  R_if(in k-ohm) = Ri * D =")
ro=(10*7)/(10+7)  // in k-ohm
format(6)
disp(ro,"  R''o(in k-ohm) = rd || R_L2 =")
rof=(4.118*10^3)/15.785  // in ohm
format(4)
disp(rof,"  R''_of(in ohm) = R''o / D =")
