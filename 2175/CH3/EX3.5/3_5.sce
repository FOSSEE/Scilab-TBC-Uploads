clc;
T1=295;//C
p1=1.02;//bar
p2=6.8;//bar
y=1.4;
v1=0.015;//m^3
cv=0.718;
R=0.287

T2=T1*(p2/p1)^((y-1)/y);
disp("final temperature is:");
disp("k",T2);

v2=v1*{(p1/p2)^(1/y)};
disp("final volume is:");
disp("m^3",v2);

w=cv*(T2-T1);
m=p1*v1*10^5/(10^3*R*T1);
W=w*m;
disp("total work done is:");
disp("kJ",W)
