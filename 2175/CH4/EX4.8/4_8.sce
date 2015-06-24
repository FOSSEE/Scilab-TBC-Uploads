clc;
p1=6.3;//bar
p2=1.05;//bar
n=1.3;
T1=823;//K
T2=T1/([p1/p2]^([n-1]/n))
R=0.287;
sA_s1=R*log(p1/p2);//sA_s1=sA-s1
cp=1.005;
sA_s2=cp*log(T1/T2);

disp("increase in entropy is:");
disp("kJ/kg",sA_s1-sA_s2)
