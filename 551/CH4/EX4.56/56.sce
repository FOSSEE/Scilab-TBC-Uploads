p1=100; //bar
p2=10; //bar
s1=5.619; //kJ/kg.K
T=584; //K
s2=7.163; //kJ/kg.K
u1=2545; //kJ/kg
u2=2811.8; //kJ/kg


disp("(i)Heat supplied ")
Q=T*(s2-s1);
disp("Q=")
disp(Q)
disp("kJ/kg")


disp("(ii) Work done")
W=Q-(u2-u1);
disp("W=")
disp(W)
disp("kJ/kg")