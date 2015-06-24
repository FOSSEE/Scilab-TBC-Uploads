clc;
s1=1.7189;
v1=0.0978;//m^3
p1=2.01;//bar
p2=10;//bar
lamda=1.1;

v2=v1*(p1/p2)^(1/lamda);

s_1=1.7564;//kJ/kg K
s_2=1.7847;//kJ/kg K
v_1=0.0228;//m^3
v_2=0.0222;//m^3
v_3=0.0233;//m^3
s2=s_1+[(v_1-v_2)/(v_3-v_2)]*(s_2-s_1)
disp("increase in entropy");
disp("kJ/kg K",s2-s1)
