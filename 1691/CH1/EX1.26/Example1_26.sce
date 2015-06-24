//Example 1.26
clc
disp("Step 1: Identify topology")
disp("The feedback voltage is applied across the resistance R_e1 and it is in series with input signal. Hence feedback is voltage series feedback")
disp("")
disp("Step 2 and Step 3: Find input and output circuit")
disp("To find input circuit, set Vo = 0, which gives parallel combination of R_e1 with R_f at E1 as shown in fig 1.75. To find output circuit, set I_i = 0 opening the input node E1 at emitter of Q1, which gives series combination of R_f and R_e1 across the output. The resultant circuit is shown in fig 1.75")
disp("")
disp("Step 4: Find open loop voltage gain (A_v)")
rl2=(2.2*52.5)/54.7
format(5)
disp(rl2,"R_L2(in k-ohm) = R_c2 || (R_f+R_e1) =")
disp("A_i2 = -h_fe = -50")
disp("R_i2 = h_ie = 1.2 k-ohm")
av2=(-50*2.11)/1.2
format(6)
disp(av2,"A_v2 = A_i2*R_L2 / R_i2 =")
rl1=(100*1.2)/101.2
disp(rl1,"R_L1(in k-ohm) = R_c1 || R_i2 =")
disp("A_i1 = -h_fe = -50")
ri2=1.2+(51*(51*1.5/52.5))
format(6)
disp(ri2,"R_i1(in k-ohm) = h_ie + (1+h_fe)R_e =")
av1=(-50*1.185)/75.51
disp(av1,"Therefore,  A_v1 = A_i1*R_L1 / R_i1 =")
disp("The overall gain without feedback is given as")
av=-0.784*-87.91
disp(av,"A_v = A_v1*A_v2 =")
disp("")
disp("Step 5: Calculate beta")
b=1.5/52.5
format(7)
disp(b,"beta = V_f/Vo =")
disp("")
disp("Step 6: Calculate D,A_vf, R_if, R_of")
d=1+(0.0285*68.92)
format(6)
disp(d,"D = 1 + beta*A_v =")
avf=68.92/2.964
disp(avf,"A_vf = A_v/D =")
ri=(75.51*200.1485)/(200.1485+75.51)
disp(ri,"R_i(in k-ohm) = R || R_i1 =")
rif=54.82*2.964
format(7)
disp(rif,"R_if(in k-ohm) = R_i/D =")
disp("Ro = infinity    because h_oe = 0")
disp("R''_o = Ro || R_c2 || (R_f+R_e1) = Ro || R_L2 = infinity || 2.11 K = 2.11 K")
rof=(2.11*10^3)/2.964
format(4)
disp(rof,"R''_of(in ohm) = R''_o/D =")
