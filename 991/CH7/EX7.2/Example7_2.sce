//Example 7.2.
clc
format(6)
delta_VGS=0.1
delta_ID=0.3*10^-3
disp("delta_VGS = 4 - 3.9 = 0.1 V")
disp("delta_ID = 1.6 - 1.3 = 0.3 mA")
gm=delta_ID/delta_VGS
gm1=gm*10^3
disp(gm1,"Therefore,  transconductance, gm(m-mho) = delta_ID / delta_VGS = ")