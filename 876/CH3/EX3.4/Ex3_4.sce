//caption:Find sensitivity of LVDT
//Ex3.4
clc
clear
close
R=1.2//rms value of output voltage(in V)
d=0.6//displacement(in micro meter)
S=(R/d)
disp(S,'sensitivity of LVDT(in volt per micro meter)=')