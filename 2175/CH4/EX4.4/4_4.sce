clc;
s1=5.615;//kJ/kg K
t1=311;//C
t2=300;//C
t3=350;//C
s2=7.124+(t1-t2)/(t3-t2)*(7.301-7.124);

T=t1+273;//K
Q=T*(s2-s1);
disp("heat supplied is:");
disp("kJ/kg",Q)

u1=2545;//kJ/kg
u2=2794+(t1-t2)/(t3-t2)*(2875-2794);

W=(u2-u1)-Q
disp("work done by the steam is:");
disp("kJ/kg",-W)
