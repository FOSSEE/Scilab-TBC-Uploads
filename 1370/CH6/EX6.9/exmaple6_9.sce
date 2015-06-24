//example6.9
clc
disp("R_m=5 ohm, I_m=15 mA")
disp("i) I=15A")
r=(15*5*10^-3)/(15-(15*10^-3))
format(9)
disp(r,"R_sh(in ohm)=[(I_m)*(R_m)]/[I-(I_m)]=")
disp("ii) V=15 V")
r=(15/(15*10^-3))-5
format(4)
disp(r,"R_s(in ohm)=V/I_m - R_m =")
