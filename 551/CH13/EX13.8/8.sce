clc

D=0.25; //m
L=0.375; //m
Vc=0.00263; //m^3
p1=1; //bar
T1=323; //K
p3=25; //bar
Vs=%pi/4*D^2*L;
r=(Vs+Vc)/Vc;
y=1.4;

disp("(i) Air standard efficiency=")
n_otto=1-1/(r^(y-1));
disp(n_otto)


disp("(ii) Mean effective pressure ")
p2=p1*(r)^(y);
r_p=p3/p2;

p_m=p1*r*(r^(y-1) - 1)*(r_p - 1)/(y-1)/(r-1);
disp("Mean effective pressure =")
disp(p_m)
disp("bar")