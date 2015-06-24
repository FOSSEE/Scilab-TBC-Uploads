//Example 9.10
clc
disp("From fig 9.45,  R1 = 68 k-ohm,  R2 = 1.5 k-ohm  and  V_sat = 13.5 V")
vut=(1.5/(1.5+68))*13.5
format(7)
disp(vut,"V_UT(in V) = R2/R1+R2 * V_sat =")
vlt=(-1.5/(1.5+68))*13.5
disp(vlt,"V_LT(in V) = -R2/R1+R2 * V_sat =")
h=2*0.2913
disp(h,"Therefore,  H(in V) = V_UT - V_LT =")
disp("Now    H = (2*R2 / R1+R2) * V_sat")
disp("For minimum H, R2 must be minimum and R1 must be maximum")
r2min=((1.5)-(0.05*1.5))
format(6)
disp(r2min,"Therefore,  R2_min(in k-ohm) = R2 - 5%*R2 =")
r2max=((68)+(0.05*68))
disp(r2max,"Therefore,  R1_max(in k-ohm) = R1 + 5%*R1 =")
hm=((2*1.425)/(71.4+1.425))*13.5
disp(hm,"Therefore,  H_min(in V) =")
