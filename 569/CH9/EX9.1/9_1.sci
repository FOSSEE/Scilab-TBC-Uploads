// calculating the length of mean free path
clc;
T=273+20;
P=101.3*10^3;
mfp=22.7*10^-6*T/P;
disp(mfp,'length of mean free path when pressure is one atmospheric pressure(m)')
P=133;
mfp=22.7*10^-6*T/P;
disp(mfp,'length of mean free path when pressure is one torr(m)')
P=133*10^-3;
mfp=22.7*10^-6*T/P;
disp(mfp,'length of mean free path when pressure is one micrometer of Hg(m)')
P=249.1;
mfp=22.7*10^-6*T/P;
disp(mfp,'length of mean free path when pressure is one inch of water(m)')
P=133*10^-6;
mfp=22.7*10^-6*T/P;
disp(mfp,'length of mean free path when pressure is 10^-3 micrometer of Hg(m)')




