//Example 3.5
clc
disp("Step 1: Identity topology")
disp("  The feedback voltage is applied across R1 (100 ohm), which is in series with input signal. Hence feedback is voltage series feedback.")
disp("")
disp("Step 2 and Step 3: Find input and output circuit")
disp("  To find input circuit, set Vo = 0, which gives parallel combination of R1 with R2 at E1 as shown in the fig.3.45. To find output circuit, set Ii = 0 by opening the input node, E1 at emitter of Q1, which gives the series combination of R2 and R1 across the output. The resultant circuit is shown in fig.3.45")
disp("")
disp("Step 4: Find the open loop voltage gain (Av)")
rl2=(4.7*4.8)/(4.7+4.8)  // in k-ohm
format(5)
disp(rl2,"  R_L2(in k-ohm) =")
disp("Since  h_oe = h_re = 0 we can use approximate analysis")
disp("  A_i2 = -hfe = -50")
disp("  R_i2 = hie = 1.1 k-ohm")
av2=(-50*2.37)/1.1
format(7)
disp(av2,"  A_v2 = A_i2*R_L2 / R_i2 =")
rl1=(10*47*33*1.1)/((47*33*1.1)+(10*33*1.1)+(10*47*1.1)+(10*47*33))  // in ohm
format(5)
disp(rl1*10^3,"  R_L1(in ohm) =")
disp("  A_i1 = -hfe = -50")
ri1=1.1+(51*((0.1*4.7)/(4.8)))  // in k-ohm
format(6)
disp(ri1,"  R_i1(in k-ohm) = hie + (1+hfe)*Re =")
av1=(-50*942)/(6.093*10^3)
format(5)
disp(av1,"  A_v1 = A_i1*R_L1 / R_i1 =")
av=-7.73*-107.73
format(7)
disp(av,"Therefore,  A_v = A_v1 * A_v2 =")
disp("")
disp("Step 5: Calculate beta and D")
disp("  beta = R1 / R1+R2 = 1/48")
d=1+(832.75/48)  // in ohm
format(6)
disp(d,"  D(in ohm) = 1 + A*beta =")
disp("")
disp("Step 5: Calculate A_vf, R_of and R_if")
avf=832.75/18.35
disp(avf,"  A_vf = A_v / D =")
rif=6.093*18.35  // in k-ohm
disp(rif,"  R_if(in k-ohm) = R_i1 * D =")
rof=(2.37*10^3)/18.35  // in ohm
format(7)
disp(rof,"  R_of(in ohm) = R_o / D =")