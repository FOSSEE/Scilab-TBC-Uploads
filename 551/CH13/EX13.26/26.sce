clc
p1=1; //bar
T1=363; //K
r=9; 
p3=68; //bar
p4=68; //bar
Q=1750; //kJ/kg
y=1.4;
cv=0.71;
cp=1.0;

disp("(i) Pressures and temperatures at salient points")
p2=p1*(r)^y;
disp("p2=")
disp(p2)
disp("bar")

T2=T1*r^(y-1);
disp("T2=")
disp(T2)
disp("K")

disp("p3=")
disp(p3)
disp("bar")

disp("p4=")
disp(p4)
disp("bar")

T3=T2*(p3/p2);
disp("T3=")
disp(T3)
disp("K")

Q1=cv*(T3-T2); //heat added at constant volume
Q2=Q-Q1; //heat added at constant pressure

T4=Q2/cp+T3;
disp("T4=")
disp(T4)
disp("K")

rho=T4/T3; //V4/V3=T4/T3

p5=p4*(rho/r)^y;
disp("p5=")
disp(p5)
disp("bar")

T5=T4*(rho/r)^(y-1);
disp("T5=")
disp(T5)
disp("K")


disp("(ii) Air standard efficiency =")
Qr=cv*(T5-T1);
n_airstandard=(Q-Qr)/Q;
disp(n_airstandard)


disp("(iii) Mean effective pressure =")
pm=1/(r-1)*(p3*(rho-1) + (p4*rho-p5*r)/(y-1) - (p2-p1*r)/(y-1));
disp(pm)
disp("bar")
