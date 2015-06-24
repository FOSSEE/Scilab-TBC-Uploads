//Example 3.6
clc
disp("Step 1: Identify topology")
disp("  The feedback voltage is applied across R_e1 = 1.5 k-ohm, which is in series with input signal. Hence feedback is voltage series feedback")
disp("")
disp("Step 2 and step 3: Find input and output circuit")
disp("  To find input circuit, set Vo = 0, which gives parallel combination of R_e1 with R_f at E1 as shown in fig.3.47. To find ouput circuit, set I_i = 0 by opening the input node, E1 at emitter of Q1, which gives the series combination of R_f and R_e1 across the output. The resultant circuit is shown in fig.3.47")
disp("")
disp("Step 4: Find the open loop voltage gain (Av)")
rl2=(2.2*57.5)/(2.2+57.5)  // in k-ohm
format(6)
disp(rl2,"  R_L2(in k-ohm) = R_c2 || (Rf + R_e1) =")
disp("Since hoe*R_L2 = 10^-6*2.119 k-ohm = 0.002119 is less than 0.1 we use approximate analysis.")
disp("  A_i2 = -h_fe = -200")
disp("  R_i2 = hie = 2 k-ohm")
av2=(-200*2.119)/2
disp(av2,"  A_v2 = A_i2*R_L2 / R_i2 =")
rl1=(120*2)/(122)  // in k-ohm
disp(rl1,"  R_L1(in k-ohm) = R_C1 || R_i2 =")
disp("Since hoe*R_L1 = 10^-6*1.967 = 0.001967 is less than 0.1 we use approximate analysis.")
disp("  A_i1 = -hfe = -200")
ri1=2+(201*((1.5*56)/(57.5)))  // in k-ohm
format(7)
disp(ri1,"  R_i1(in k-ohm) = hie + (1+hfe)*Re =")
av1=(-200*1.967)/295.63
format(5)
disp(av1,"Therefore,  A_v1 = A_i1*R_L1 / R_i1 =")
disp("The overall gain without feedback is")
av=-1.33*-211.9
format(7)
disp(av,"  Av = A_v1 * A_v2 =")
disp("")
disp("Step 5: Calculate beta")
beta=1.5/57.5
format(6)
disp(beta,"  beta = Vf / Vo =")
disp("")
disp("Step 6: calculate D, A_vf, R_if, R_of")
d=1+(0.026*281.82)
disp(d,"  D = 1 + Av*beta =")
avf=281.82/8.327
disp(avf,"Therefore,  A_vf = Av / D =")
ri=(295.63*150)/(295.63+150)  // in k-ohm
format(5)
disp(ri,"  Ri(in k-ohm) = R_i1 || R =")
rif=99.5*8.327  // in k-ohm
format(7)
disp(rif,"  R_if(in k-ohm) = Ri *D =")
disp("  Ro = 1/hoe = 1 M-ohm")
rof=((1*10^6)/8.327)*10^-3  // in k-ohm
format(4)
disp(rof,"  R_of(in k-ohm) = Ro / D =")
ro=(1000*2.119)/(2.119+1000)  // in k-ohm
format(7)
disp(ro,"  R''o(in k-ohm) = Ro || R_c2 || (Rf+R_e1) = Ro || R_L2 =")
rof=(2.1145*10^3)/8.327  // in ohm
format(4)
disp(rof,"  R''_of(in ohm) = R''o / D =")