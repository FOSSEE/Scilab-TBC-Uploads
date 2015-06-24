//Example 1.29
clc
disp("Fig 1.83 shows current shunt feedback amplifier open circuit transfer gain")
disp("A_I = -I_c2/I_s = -I_c2/I_b2 * I_b2/I_c1 * I_c1/I_b1 * I_b1/I_s")
disp("I_c2/I_b2 = A_i2 = -h_fe = -100")
disp("-I_c1/I_b1 = 100")
ri2=1+(101*(1/10.1))
format(3)
disp(ri2,"R_i2(in k-ohm) = h_ie + (1+h_fe)(R_e2||R'') =")
ibc=-2.2/14.2
format(6)
disp(ibc,"I_b2/I_c1 = -R_c1 / R_c1+(R_i2+R_b2) =")
disp("I_b1/I_s = R/R+h_ie")
r=(10.1*10^3)/11.1
disp(r,"R(in ohm) = R_s || (R''+R_e) =")
ibs=0.9099/1.9099
disp(ibs,"Therefore,  I''_b/I_s =")
ai=100*0.155*100*0.476
disp(ai,"Therefore,  A_I =")
disp("Calculate of beta:")
disp("I_f = -I_o*R_e2 / R_e2+R''")
disp("beta = I_f/Io = R_e2/R_e2+R'' = 100/100+10K")
d=1+(9.9*737.8*10^-3)
format(4)
disp(d,"D = 1 + beta*A_I =")
disp("A_if = A_I/D = 88.89")
avf=88.89*2.2
format(8)
disp(avf,"A_vf = Vo/V_s = -I_c2/I_s * R_c2/R_s = A_if*R_c2 / R_s =")
ri1=(909.9*1000)/1909.9
format(4)
disp(ri1,"R_i1(in ohm) = R || h_ie =")
rif=476/8.3
format(6)
disp(rif,"R_if(in ohm) = R_i/D =")
disp("R_of = R_c2 = 2.2 k-ohm")
