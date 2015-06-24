clc
p1=3*10^5; //Pa
v1=0.18; //m^3/kg
C=p1*v1^2;
p2=0.6*10^5; //Pa
v2=sqrt(C/p2);
W=integrate('C/v^2', 'v', v1,v2);
disp("Work done=")
disp(W)
disp("Nm/kg")