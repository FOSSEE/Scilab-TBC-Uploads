clc;
p1=7;//bar
p2=1;//bar
y=1.333;
T1=923;//K
T2=T1/[(p1/p2)^((y-1)/y)]

cp=1.11;
c2=45;
c1=9;
W=cp*(T2-T1)+[(c2^2-c1^2)/(2*10^3)];
disp("powar output is");
disp("kW",-W)
