//Example 3.13
clc
disp("Step 1: Identify topology")
disp("  The feedback voltage is applied across R1(150 ohm), which is in series with input signal. Hence feedback is voltage series feedback.")
disp("")
disp("Step 2 and Step 3: Find input and output circuit")
disp("  To find input circuit, set Vo = 0, which gives parallel combination of R1 with R2 at E1 as shown in the fig.3.61. To find output circuit, set Ii = 0 by opening the input node, E1 at emitter of Q1, which gives the series combination of R2 and R1 across the output. The resultant circuit is shown in fig.3.61.")
disp("")
disp("Step 4: Find the open loop voltage gain (Av)")
rl2=(4.7*15.15)/(4.7+15.15)  // in k-ohm
format(5)
disp(rl2,"  RL2(in k-ohm) =")
disp("Since  hoe = hre = 0, we can use approximate analysis.")
disp("  A_i2 = -h_fe = -500")
disp("  R_i2 = h_ie = 1100 ohm")
av2=(-500*3.59*10^3)/1100
disp(av2,"  A_v2 = A_i2*R_L2 / R_i2 =")
rl1=((10*47*33*1.1)/((47*33*1.1)+(10*33*1.1)+(10*47*1.1)+(10*47*33)))*10^3  // in ohm
disp(rl1,"  R_L1(in ohm) = 10K || 47K || 33K || R_i2 =")
disp("  A_i1 = -h_fe = -500")
ri1=1.1+(501*((0.15*15)/(0.15+15)))  // in k-ohm
disp(ri1,"  R_i1(in k-ohm) = h_ie + (1+h_fe)*Re =")
av1=(-500*942)/(75.5*10^3)
format(6)
disp(av1,"  A_v1 = A_i1*R_L1 / R_i1 =")
av=-6.238*-1632
disp(av,"  Av = A_v1 * A_v2 =")
disp("")
disp("Step 5: Calculate beta and D")
beta=150/(150+15000)
format(7)
disp(beta,"  beta = R1 / R1+R2 =")
d=1+(10180*0.0099)
format(8)
disp(d,"  D = 1 + A*beta =")
disp("")
disp("Step 6: Calculate A_vf, R_of and R_if")
avf=10180/101.782
format(4)
disp(avf,"  A_vf = Av / D =")
rif=75.5*101.782*10^-3  // in M-ohm
format(6)
disp(rif,"  R_if(in M-ohm) = R_i1 * D =")
rof=(3.59*10^3)/101.782
disp(rof,"  R_of(in ohm) = Ro / D = R_L2 / D =")
