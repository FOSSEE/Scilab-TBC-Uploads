clc;
h1=2846;
h2=2682;
x2=0.98;
vg=0.6057;
v2=x2*vg;
C2=[2*(h1-h2)*10^3]^0.5;
m=0.1;
A2=m*v2*10^6/C2;
disp("mm^2",A2,"Exit area is:");

//part II
p1=7;
p2=3;
k=1.3;
v1=0.3001;
vr=v1*[(p1/p2)^(1/k)];
y=1.3;
Cr=[2*(y*10^5)/(y-1)*{(p1*v1)-(p2*vr)}]^0.5;
A2=m*vr*10^6/Cr;
disp("mm^2",A2,"Exit area in supersaurated case is:")
