//example6.3
clc
disp("Given values are, (R_m)=100 ohm, (I_m)=2 mA, I=150 mA")
disp("(R_sh)=[(I_m)*(R_m)]/[I-(I_m)]")
r=(2*100*10^-3)/((150*10^-3)-(2*10^-3))
format(6)
disp(r,"Therefore, (R_sh)[in ohm]=(2*100*10^-3)/((150*10^-3)-(2*10^3))=")
