//Example 1.16
clc
disp("Step 1: Identify topology")
disp("  By shorting output(Vo = 0), feedback voltage V_f becomes zero.The feedback is mixed in series feedback.")
disp("")
disp("Step 2 and Step 3: Find input and output circuit.")
disp("  To find input circuit, set Vo = 0. This places the parallel combination of resistors 10K and 1K at the first emitter. To find output circuit, set Ii = 0. This places resistors 10K and 1K in series across the output. The resultant circuit is shown in fig 1.51.")
disp("")
disp("Step 4: Replace transistor with its h-parameter equivalent as shown in fig.1.52.")
disp("")
disp("Step 5: Find open loop transfer gain.")
disp("A_v = A_v1*A_v2")
disp("    = V_i2/V_i1 * Vo/V_i2")
disp("Vo/V_i2 = -h_fe*R_L2 / R_i2")
rl2=(5.1*11)/(16.1)
format(6)
disp(rl2,"where  R_L2(in k-ohm) =")
disp("and  R_i2 = h_ic = 1.1 K")
voi=(-50*3.484)/1.1
format(7)
disp(voi,"Therefore,  Vo/V_i2 =")
disp("V_i2/V_i1 = -h_fe*R_L1 / R_i1")
rl1=((1.1*1)/(2.1))*10^3
format(6)
disp(rl1,"where  R_L1(in ohm) =")  //answer in text book is wrong
disp("and  R_i = 82K || [h_ie + (1+h_fe)(1K||10K)]")
ri=((82*47.459)/(82+47.459))
format(3)
disp(ri,"Therefore,  R_i(in k-ohm) = ")
vi21=(-50*523.8)/(30*10^3)
format(6)
disp(vi21,"Therefore,  V_i2/V_i1 =")
av=-158.36*-0.888
format(7)
disp(av,"Therefore,  A_v =")
disp("")
disp("Step 6: Calculate beta")
be=1/10
format(4)
disp(be,"beta = V_f/Vo =")
disp("")
disp("Step 7: Calculate A_vf, R_if and R''_of")
d=1+(0.1*140.62)
format(7)
disp(d,"D = 1 + beta*A_v =")
avf=140.62/15.062
format(6)
disp(avf,"A_vf = A/D =")
rif=30*15.062
format(7)
disp(rif,"R_if(in k-ohm) = R_i*D =")
disp("R''_o = R_L2 = 3.484 k-ohm")
rof=(3.484*10^3)/15.062
disp(rof,"R''_of(in ohm) = R''_o/D =")
