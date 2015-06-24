clc
cv=0.72; //kJ/kg K
y=1.4;
p1=1; //bar
T1=300; //K
Q=1500; //kJ/kg
r=8;
y=1.4;

disp("(i) Pressures and temperatures at all points")
T2=T1*(r)^(y-1);
disp("T2=")
disp(T2)
disp("K")

p2=p1*(r)^y;
disp("p2=")
disp(p2)
disp("bar")

T3=Q/cv + T2;
disp("T3=")
disp(T3)
disp("K")

p3=p2*T3/T2;
disp("p3=")
disp(p3)
disp("bar")

T4=T3/r^(y-1);
disp("T4=")
disp(T4)
disp("K")

p4=p3/r^(y);
disp("p4=")
disp(p4)
disp("bar")


disp("(ii) Specific work and thermal efficiency")
SW=cv*[(T3-T2) - (T4-T1)];
disp("Specific work =")
disp(SW)
disp("kJ/kg")

n_th=1-1/r^(y-1);
disp("Thermal efficiency =")
disp(n_th)