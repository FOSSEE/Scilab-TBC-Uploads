//Example 1.24
clc
disp("Step 1: Identify topology")
disp("Here output voltage is sampled and fed in shunt with the input siganl such that, I_s-I_f = I_i, hence topology is voltage shunt feedback")
disp("")
disp("Step 2 and Step 3: Find input and output circuit")
disp("To find input circuit, set Vo = 0. This places resistor R across the input. To find output circuit, set V_i = 0. This places resistor R across output. The resultant circuit is shown in fig 1.69. The circuit shows voltage source replaced by current source")
disp("")
disp("Step 4: Replace transistor with their h-parameter equivalent circuits as shown in fig 1.70")
disp("")
disp("Step 5 : Find open loop transfer gain")
disp("R_M = Vo/I_s = R_c2*Io/I_s")
disp("    = R_c2 * Io/I_b2 * I_b2/I_e1 * I_e1/I_b1 * I_b1/I_s")
iob=(-100*2.2)/7.3
format(7)
disp(iob,"Io/I_b2 = -h_ie*R / R+R_c2 =")
iobe=(101*1.1)/3.1
format(6)
disp(iobe,"I_b2/I_e2 * I_e1/I_b1 = -h_ie*R / R+R_c2 =")
disp("I_b1/I_s = R_s||R / (R_s||R)+R_i1")
ri1=2+(101*1.1)
disp(ri1,"where  R_i1(in k-ohm) = h_ie + (1+h_fe)R_e =")
ibs=(2.2/3.2)/((2.2/3.2)+(113.1))
format(8)
disp(ibs,"I_b1/I_s =")
rm=5.1*-30.137*35.84*6.04*10^-3
format(7)
disp(rm,"Therefore,  R_M(in k-ohm) =")
disp("")
disp("Step 6: Calculate beta")
b=-1/(2.2*10^3)
format(10)
disp("beta = I_f/Io = V_i-Vo/Vo*R =")
disp(b,"     = -1/R =            because (Vo > V_i)")
disp("")
disp("Step 7: Calculate D, R_Mf, A_vf, R_if, R''_of")
d=1+(4.545*33.539*10^-1)
format(7)
disp(d,"D = 1 + beta*R_M =")
rmf=-33.539/16.245
format(6)
disp(rmf,"R_Mf(in k-ohm) = R_M/D =")
avf=-2.065
disp(avf,"A_vf = V0/V_s = Vo/I_s*R_s =")
ri=((1*113.1*2.2)/((113.1*2.2)+(1*113.1)+(2.2*1)))*10^3
format(4)
disp(ri,"R_i(in ohm) = R_s || R_i1 || R =")  //answer in textbook wrong
rif=(683)/16.245
format(3)
disp(rif,"R_if(in ohm) = R_i/D =")
disp("Ro = infinity")
disp("Therefore,  R_of = infinity/D = infinity")
ro=(2.2*5.1)/(7.3)
format(6)
disp(ro,"R''_o(in k-ohm) = R || R_c2 =")
rof=(1.537*10^3)/16.245
disp(rof,"R''_of(in ohm) = R''_o/D =")
