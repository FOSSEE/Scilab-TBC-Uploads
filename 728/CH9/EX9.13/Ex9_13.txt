//Caption:Calculate (i)-equivalent noise resistance, (ii)-gain, (iii)-noise figure, (iv)-bandwidth
//Exa:9.13
clc;
clear;
close;
f_s=2*10^9;//in Hz
f_p=12*10^9;//in Hz
f_i=10*10^9;//in Hz
f_d=5*10^9;//in Hz
R_i=1*10^3;//in ohm
R_g=1*10^3;//in ohm
R_T_s=1*10^3;//in ohm
R_T_i=1*10^3;//in ohm
T_d=300;//in Kelvin
T_o=300;//in Kelvin
w_s=2*%pi*f_s;
w_i=2*%pi*f_i;
r=0.35;
r_Q=10;
r_d=300;//in ohm
C=0.01*10^-12;//in Farad
R=r^2/(w_s*w_i*C^2*R_T_i);
a=R/R_T_s;
g=((4*f_i*R_g*R_i*a)/(f_s*R_T_s*R_T_i*(1-a)^2));//gain
Gain=[10*log(g)]/log(10);//gain in dB
f={1+((2*T_d)/T_o)*[(1/r_Q)+(1/r_Q^2)]};//noise figure
F=[10*log(f)]/log(10);//noise figure in dB
B_W=(r/2)*sqrt(f_d/(f_s*Gain));//bandwidth
disp(a,'Equivalent noise resistance (in ohm) =');
disp(Gain,'Gain (in dB) =');
disp(F,'Noise figure (in dB) =');
disp(B_W,'Bandwidth =');