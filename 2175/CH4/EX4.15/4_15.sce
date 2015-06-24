clc;
cp=6.3;
h2=70;
h1=15;
T0=283;//K
T1=343;//K
T2=288;//K
T3=1400+273;//K
s2_s1=cp*log(T1/T2);
b2_b1=cp*(h2-h1)-T0*(s2_s1);

loss=cp*(h2-h1)*(1-T0/T3)
eff=b2_b1/loss
disp("effectiveness is:")
disp("%",eff*100)
