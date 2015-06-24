clc
V1=0.45; //m^3
p1=1; //bar
T1=303; //K
p2=11; //bar
Qs=210; //kJ
n=210; //number of working cycles/min
R=287; //J/kg K
cv=0.71; //kJ/kg K
y=1.4;

disp("(i) Pressures, temperatures and volumes at salient points")
r=(p2/p1)^(1/y);

T2=T1*(r)^(y-1);
disp("T2=")
disp(T2)
disp("K")

V2=T2/T1*p1/p2*V1;
disp("V2=")
disp(V2)
disp("m^3")

m=p1*10^5*V1/R/T1;
T3=Qs/m/cv+T2;
disp("T3=")
disp(T3)
disp("K")

p3=T3/T2*p2;
disp("p3=")
disp(p3)
disp("bar")

V3=V2;
disp("V3=")
disp(V3)
disp("m^3")

p4=p3/r^y;
disp("p4=")
disp(p4)
disp("bar")

T4=T3/r^(y-1);
disp("T4=")
disp(T4)
disp("K")

V4=V1;
disp("V4=")
disp(V4)
disp("m^3")


disp("(ii) Percentage clearance =")
%clearance=V2/(V1-V2)*100;
disp(%clearance)
disp("%")


disp("(iii) Efficiency =")
Qr=m*cv*(T4-T1);
n_otto=(Qs-Qr)/Qs;
disp(n_otto)


disp("(iv) Mean effective pressure =")
p_m=(Qs-Qr)/(V1-V2)/100; //bar
disp(p_m)
disp("bar")


disp("(v) Power developed =")
P=(Qs-Qr)*n/60;
disp(P)
disp("kW")