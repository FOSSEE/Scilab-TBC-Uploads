//Example 4.1
clc
disp("Refering to equation(1),")
ri=(25*57*1.8)/((57*1.8)+(25*1.8)+(25*57))  // in k-ohm
format(6)
disp(ri,"  R''_i(in k-ohm) = R1 || R2 || h_ie =")
disp("Now  R''_i + R3 = R")
r3=7.1-1.631  // in k-ohm
format(5)
disp(r3,"Therefore,  R3(in k-ohm) = R - R''_i =")
k=20/7.1
format(6)
disp(k,"  K = R_C / R =")
disp("Now  f = 1 / 2*pi*R*C*sqrt(6+4K)")
c=(1/(sqrt(6+(4*2.816))*2*%pi*7.1*10*10^6))*10^12  // in pF
format(8)
disp(c,"Therefore,  C(in pF) =")
disp("  h_fe >= 4K + 23 + 29/K")
hfe=(4*2.816)+23+(29/2.816)
format(7)
disp(hfe,"  h_fe >=")
