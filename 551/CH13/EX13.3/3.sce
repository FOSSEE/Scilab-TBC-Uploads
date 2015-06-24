clc
p1=18*10^5; //Pa
T1=683; //K
T2=T1;
r1=6; //ratio V4/V1; Isentropic compression
r2=1.5; //ratio V2/V1; Isothermal expansion
y=1.4;
V1=0.18; //m^3

disp("(i) Temperatures and pressures at the main points in the cycle")

T4=T1/(r1)^(y-1);
disp("T4=")
disp(T4)
disp("K")

T3=T4;
disp("T3=")
disp(T3)
disp("K")

p2=p1/r2;
disp("p2=")
disp(p2/10^5)
disp("bar")

p3=p2/(r1)^y;
disp("p3=")
disp(p3/10^5)
disp("bar")

p4=p1/(r1)^y;
disp("p4=")
disp(p4/10^5)
disp("bar")


disp("(ii) Change in entropy =")
dS=p1*V1/T1/10^3*log(r2);
disp(dS)
disp("kJ/K")


disp("(iii) Mean thermal efficiency of the cycle")
Qs=T1*(dS);
Qr=T4*(dS);

n=1-Qr/Qs;
disp("n=")
disp(n)


disp("(iv) Mean effective pressure of the cycle =")
pm=(Qs-Qr)/8/V1/100; //bar
disp(pm)
disp("bar")


n=210; //cycles per minute
disp("(v) Power of the engine =")
P=(Qs-Qr)*n/60; //kW
disp(P)
disp("kW")