//Example 3.7
clc
disp("Step 1: Identity topology")
disp("  By shorting output voltage (Vo = 0), feedback voltage Vf becomes zero and hence it is voltage sampling. The feedback voltage is aaplied in series with input voltage hence the topology is voltage series feedback.")
disp("")
disp("Step 2 and Step 3: Find input and output circuit.")
disp("  To find input circuit, set Vo = 0. This places the parallel combination of resistor 10 K and 200 ohm at first source. To find output circuit, set Ii = 0. This places the resistor 10 K and 200 ohm in series across the output. The resultant circuit is shown in fig.3.50.")
disp("")
disp("Step 4: Replace FET with its equivalent circuit as shown in fig.3.51")
disp("")
disp("Step 5: Find open loop transfer gain.")
disp("  Av = Vo / Vs = A_v1*A_v2")
disp("  A_v2 = -u*R_L2 / R_L2+r_d")
rl2=(10.2*47)/(10.2+47)  // in k-ohm
format(5)
disp(rl2,"where  R_L2(in k-ohm) =")
av2=(-40*8.38)/(8.38+10)
format(7)
disp(av2,"Therefore,  A_v2 =")
disp("  A_v1 = u*R_Deff / r_d+R_Deff+(1+u)*R_seff")
rdeff=(47*1000)/(47+1000)  // in k-ohm
format(6)
disp(rdeff,"where  R_Deff(in k-ohm) = R_D || R_G2 =")
disp("  R_seff = 200 || 10 K")
av1=(-40*44.98*10^3)/((10*10^3)+(44.89*10^3)+(41*((10*0.2)/(10.2))))
disp(av1,"  A_v1 =")   // answer in textbook is wrong
oav=-28.59*-18.237
format(7)
disp(oav,"Therefore,  Overall Av =")
disp("")
disp("Step 6: Calculate beta")
beta=200/(10.2*10^3)
disp(beta,"  beta = Vf / Vo =")
disp("")
disp("Step 7: Calculate D, A_vf, R_if, R''_of")
d=1+(0.0196*521.39)
format(6)
disp(d,"  D = 1 + Av*beta =")
avf=521.39/11.22
disp(avf,"  A_vf = Av / D =")
disp("  Ri = R_G = 1 M-ohm")
rif=11.22
disp(rif,"  R_if(in M-ohm) = Ri * D =")
disp("  Ro = r_d = 10 k-ohm")
ro=(10*8.38)/(18.38)  // in k-ohm
disp(ro,"  R''o(in k-ohm) = r_d || R_L2 =")
rof=(4.559*10^3)/11.22  // in ohm
format(4)
disp(rof,"  R''_of(in ohm) = R''o / D =")