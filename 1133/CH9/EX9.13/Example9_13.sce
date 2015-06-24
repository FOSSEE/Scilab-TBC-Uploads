//Example 9.13
clc
disp("(a) We know that,")
vut=(86*15)/(86+100)
format(5)
disp(vut,"  V_UT(in V) = R1*+V_sat / R1+R2 =")
vlt=(86*-15)/(86+100)
disp("(b) We know that,")
disp(vlt,"  V_LT(in V) = R1*-V_sat / R1+R2 =")
disp("(c) We know that,")
f0=1/0.02
disp(f0," f0(in Hz) = 1 / 2*Rf*C_in*[+V_sat-V_LT/+V_sat-V_UT] =")
