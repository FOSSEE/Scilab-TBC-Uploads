clc
m=2.5; //kg
p1=6*10^5; //Pa
r=2; //r=V2/V1
cv=0.718; //kJ/kg K
R=0.287; //kJ/kg K
T1=363; //K
p2=1*10^5; //Pa
T2=278; //K
V1=m*R*T1/p1;
V2=2*V1;
T0=278; //K
p0=1*10^5; //Pa
Q=0; //adiabatic process

disp("(i)The maximum work")
dS=m*cv*log(T2/T1) + m*R*log(V2/V1);
Wmax=m*[cv*(T1-T2)] + T0*(cv*log(T2/T1) + R*log(V2/V1));
disp("Wmax=")
disp(Wmax)
disp("kJ")


disp("(ii)The change in availability")
dA=Wmax+p0*(V1-V2);
disp("Change in availability =")
disp(dA)
disp("kJ")


disp("(iii) The irreversibility")

I=T0*m*(cv*log(T2/T1)+R*log(V2/V1));

disp("Irreversibility =")
disp(I)
disp("kJ")