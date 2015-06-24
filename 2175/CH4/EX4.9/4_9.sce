clc;
R_=8314.5;
m_=44;
R=R_/m_;

p2=8.3;//bar
V2=0.004;//m^3
m=0.05;
T2=p2*V2*10^5/(m*R);

p2=8.3;//bar
pA=1;//bar
sA_s2=(R/1000)*log(p2/pA);

cp=0.88;
T2=351;//K
T1=288;//K
sA_s1=cp*log(T2/T1);

dec_ent=m*(sA_s2-sA_s1);
disp("decrease in entropy is:");
disp("kJ/K",dec_ent)
