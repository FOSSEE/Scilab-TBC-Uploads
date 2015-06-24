clc
D=0.2; //m
L=0.3; //m
p1=1; //bar
T1=300; //K
R=287;
r=15;
y=1.4;

disp("(i) Pressures and temperatures at salient points")
Vs=%pi/4*D^2*L;

V1=r/(r-1)*Vs;
disp("V1=")
disp(V1)
disp("m^3")

m=p1*10^5*V1/R/T1;

p2=p1*r^y;
disp("p2=")
disp(p2)
disp("bar")

T2=T1*r^(y-1);
disp("T2=")
disp(T2)
disp("K")

V2=Vs/(r-1);
disp("V2=")
disp(V2)
disp("m^3")

rho=8/100*(r-1) + 1;
V3=rho*V2;
disp("V3=")
disp(V3)
disp("m^3")

T3=T2*V3/V2;
disp("T3=")
disp(T3)
disp("K")

p3=p2;
disp("p3=")
disp(p3)
disp("bar")

p4=p3*(rho/r)^y;
disp("p4=")
disp(p4)
disp("bar")

T4=T3*(rho/r)^(y-1);
disp("T4=")
disp(T4)
disp("K")

V4=V1;
disp("V4=")
disp(V4)
disp("m^3")

disp("(ii) Theoretical air standard efficiency =")
n_diesel=1-1/y/r^(y-1)*((rho^y-1)/(rho-1));
disp("efficiency =")
disp(n_diesel)


disp("(iii) Mean effective pressure =")
pm=(p1*r^y*(y*(rho-1) - r^(1-y)*(rho^y-1)))/(y-1)/(r-1);
disp(pm)
disp("bar")

disp("(iv) Power of the engine =")
n=380; //number of cycles per min
P=n/60*pm*Vs*100; //kW
disp(P)
disp("kW")
