clc;
p1=3.5;
y=1.333;
pc=p1*[2/(y+1)]^[(y/(y-1))];

T1=425+273;
Tc=T1*[2/(y+1)];
T2=Tc;
cp=1.11*10^3;
Cc=[2*cp*(T1-T2)]^0.5;
C2=Cc;
R=cp*(y-1)/y;
vc=R*Tc/10^5/pc;

m=18/.99;
Ac=m*vc/Cc
disp("m^2",Ac,"throat area is:");
T1=698;
p1=3.5;
p2=0.97;
T2s=T1/[(p1/p2)^{(y-1)/y}];
Neff=0.94;
T2=T1-Neff*(T1-T2s);
v2=R*T2/10^5/p2;
C2=(2*cp*(T1-T2))^0.5;
m2=18;
A2=m2*v2/C2;
disp("m^2",A2,"exit area is :");
