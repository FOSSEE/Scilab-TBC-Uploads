
// scilab Code Exa 7.2 Calculating the discharge of a geometrically similar blower and specific speed of the fan
pr=2; // Compressor pressure ratio
N1=1.47e3; // fan Speed in RPM
N2=0.36e3; // blower Speed in RPM
Q1=2; // discharge in m3/s
h=10e-3; // in m W.G.
ro_w=10e2;
ro_a=1.25; // density of air in kg/m3
omega1=%pi*2*N1/60;
g=9.81; // in m/s2
p=ro_w*g*h
H=p/(ro_a*g);
delh_s=g*H;
NS=omega1*sqrt(Q1)*delh_s^(-3/4)
disp(NS,"the specific speed is")
// for the same specific speed of two geometrically similar fans
a=N1/N2;
Q2=a^2*Q1;
disp("m3/s",Q2," and the discharge of a geometrically similar blower is")
