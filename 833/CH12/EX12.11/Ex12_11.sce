//Caption:Calculate external resistance per phase 
//Exa:12.11
clc;
clear;
close;
p=6//Number of poles
f=50//Frequency(in hertz)
r=0.25//Resistance per phase(in ohms)
n_1=965//Speed on full load(in r.p.m)
n_2=800//Reduced speed(in r.p.m)
n_s=(120*f)/p
s_1=(n_s-n_1)/n_s
s_2=(n_s-n_2)/n_s
R=((s_2*r)/s_1)-r
disp(R,'Required external resistance per phase(in ohms)=')