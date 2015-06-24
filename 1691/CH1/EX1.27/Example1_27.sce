//Example 1.27
clc
disp("Step 1: Identity topology")
disp("The feedback is given from emitter of Q2 to the base of Q2. If Io=0 then feedback current through 5K register is zero, hence it is current sampling. As feedback signal is mixed in shunt with input, the amplifier is current shunt feedback amplifier")
disp("")
disp("Step 2 and Step 3: Find input and output circuit")
disp("The input circuit of the amplifier without feedback is obatined by opening the output loop at the emitter of Q2(Io = 0). This places R''(5K) in series with R_s from base to emitter of Q1. The output circuit is found by shorting the input node, i.e. making V1=0. This places R''(5K) in parallel with R_e. The resultant equivalent circuit is shown in fig 1.78")
disp("Step 4: Find open circuit transfer gain")
disp("A_I = Io/I_s = -I_c/I_s = -I_c2/I_b2 * I_b2/I_c1 * I_c1/I_b1 * I_b1/I_s")
disp("We know that  -I_c2/I_b2 = A_i2 = -h_fe = -50 and")
disp("-I_c/I_b1 = A_i1 = -h_fe = -50")
disp("Therefore,  I_c1/I_b1 = 50")
disp("Looking at fig 1.77 we can write")
disp("I_b2/I_c1 = -R_c1/R_c1+R_i2")
ri2=1.5+(51*(5*0.6/5.6))
format(6)
disp(ri2,"R_i2(in k-ohm) = h_ie + (1+h_fe)(R_e2||R'') =")
ibc=-2/30.82
format(7)
disp(ibc,"Therefore,  I_b2/I_c1 =")
disp("Looking at fig 1.78 we can write")
disp("I_b1/I_s = R/R+R_i1")
r=(5.6*10^3)/6.6
format(4)
disp(r,"where  R(in ohm) = R3 || (R''+R_e) =")
ri1=1.5+20.4
format(5)
disp(ri1,"and  R_i1(in k-ohm) = h_ie + (1+h_fe)R_e1 =")
ib1=0.848/22.748
format(7)
disp(ib1,"Therefore,  I_b1/I_s =")
disp("Substituting the numerical values obtained in equations of A_I we get,")
ai=50*0.0649*50*0.0372
format(2)
disp(ai,"A_I =")
disp("")
disp("Step 5: Calculate beta")
b=0.6/5.6
format(6)
disp(b,"beta = I_f/Io = R_e2 / R_e2+R'' =")
disp("")
disp("Step 6: Calculate D,A_If, A_vI, R_sf, R_of")
d=1+(0.107*6)
format(6)
disp(d,"D = 1 + beta*A_I =")
aif=6/1.642
disp(aif,"A_if = A_I/D =")
avf=(3.654*12)/1
format(7)
disp(avf,"A_vf = Vo/V_s = -I_c2/I_s * R_c2/R_s = A_if*R_c2 / R_s =")
ri1=(848*21900)/(21900+848)
disp(ri1,"R_i1(in ohm) = R || R_i1 =")
rif=816.38/1.642
format(6)
disp(rif,"R_if(in ohm) = R_i/D =")
disp("Ro = infinity    because h_oe = 0")
disp("Therefore,  R_of = Ro*D = infinity")
disp("R''_o = Ro || R_c2 = infinity || 12 K = 12 K")
disp("R''_of = R''_o * 1+beta*A_i/1+beta*A1 = R''_o = R_c2 = 12K")
