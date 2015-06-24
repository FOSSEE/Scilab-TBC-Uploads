//example6.8
clc
disp("I_m=15 mA, R_m=5 ohm")
disp("i) I=2A")
r=(15*5*10^-3)/(2-(15*10^-3))
format(8)
disp(r,"R_sh(in ohm)=[(I_m)*(R_m)]/[I-(I_m)]=")
disp("ii) V=100 V")
r=(100/(15*10^-3))-5
format(10)
disp(r,"R_s(in ohm)=V/I_m - R_m =")
