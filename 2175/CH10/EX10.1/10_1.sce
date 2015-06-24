clc;
y=1.4;
p1=8.6;
pc=p1*[(2/(y+1))^{y/(y-1)}];

T1=190+273;
Tc=T1*[2/(y+1)];
R=287;
vc=R*Tc/(10^5*pc);
Cc=(y*R*Tc)^0.5;

m=4.5;
A=m*vc/Cc;
disp("mm^3",A*10^6,"Area of troat is:");

p2=1.03;
T1=463;
T2=T1/([p1/[p2]]^([y-1]/y));

v2=R*T2/(10^5*p2);
cp=1.005
C2=[2*cp*10^3*(T1-T2)]^0.5;
A2=m*v2/C2
disp("mm^3",A2*10^6,"Exit area is:");
