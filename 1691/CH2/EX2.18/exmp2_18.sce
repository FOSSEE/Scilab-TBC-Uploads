//Example 2.18
clc
disp("Refering to equation(1) of section 4.5.3, the input impedance is given by,")
disp("R''_i = R1 || R2 || h_ie")
disp("Now  R1 = 25 k-ohm,  R2 = 47 k-ohm,  and  h_ie = 2 k-ohm")
format(7)
ri=(25*47*2)/((47*2)+(25*2)+(25*47))  // in k-ohm
disp(ri,"Therefore,  R''_i(in k-ohm) =")
disp("  K = R_C / R")
disp("Now  R_C = 10 k-ohm        ...given")
disp("Now  f = 1 / 2*pi*R*C*sqrt(6+4K)")
disp("Therefore,  R*sqrt(6+4K) = 31830.989")
disp("Now  K = R_C / R = 10*10^3 / R")
disp("Therefore,  R*sqrt(6+(40*10*10^3/R)) = 31830.989")
disp("Therefore,  R^2*(6+(40*10*10^3/R)) = (31830.989)^2")
R=poly(0,'R')
p1=6*R^2+(40*10^3)*R-(31830.989)^2
t1=roots(p1)
ans1=t1(1)
format(6)
disp((-ans1)*10^-3,"Therefore,  R(in k-ohm)=            Neglecting negative value")
k=10/16.74
format(7)
disp(k,"Therefore,  K = R_C / R =")
disp("Therefore,  h_fe >= 4K + 23 + 29/K")
hfe=(4*0.5973)+23+(29/0.5973)
format(6)
disp(hfe,"  h_fe >=")
