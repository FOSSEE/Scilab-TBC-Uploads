//Example 10.1
clc
disp("Z_Z = 7 ohm,  R3 = 330 ohm,  V_0 = 4.7 V,  V_in = 15 V")
disp("The specified change in V_in is 10%,")
vin=0.1*15
format(4)
disp(vin,"Therefore,  deltaV_in(in V) = 10% of V_in =")
vo=(1.5*7)/330
format(8)
disp(vo,"Therefore,  deltaV_0(in V) = deltaV_in*Z_Z / R3 =")
lr=0.03181*100/4.7
format(6)
disp(lr,"Therefore,  Line regulation(in percentage) = deltaV_0*100 / V_0 =")
disp("For  I_L(max) = 50 mA,")
dvo=(20*7*50*10^-3)/330
format(8)
disp(dvo,"Therefore,  deltaV_0(in V) = I_L(max)*R_S*Z_Z / R3 =")
lr=0.02121*100/4.7
format(7)
disp(lr,"Therefore,  Line regulation(in precentage) = deltaV_0*100 / V_0 =")
disp("Now    V_R(out) = V_R(in)*Z_Z / R3")
zz=7/330
format(8)
disp(zz,"Therefore,  V_R(out)/V_R(in) = Z_Z/R3 =")
rr=20*log10(0.02121)
format(6)
disp(rr,"Therefore,  RR(in dB) = 20*log(0.02121) = ")
