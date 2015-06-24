clc
p1=200; //kN/m^2
V1=170; //m/s
T1=473; //K
A1=0.001; //m^2
R=287; //J/kg K
cp=1000; //J/kg K
y=1.4;

disp("(i) Stagnation temperature (Ts) and stagnation pressure (ps)")

Ts=T1+V1^2/2/cp;
disp("Ts=")
disp(Ts)
disp("K")

ps=p1*(Ts/T1)^(y/(y-1));
disp("ps=")
disp(ps)
disp("kN/m^2")


disp("(ii) Sonic velocity and Mach number at this section")

C1=sqrt(y*R*T1);
disp("Sonic velocity =")
disp(C1)
disp("m/s")

M1=V1/C1;
disp("Mach number = ")
disp(M1)


disp("(iii) Velocity, Mach number and flow area at outlet section where pressure is 110 kN/m2")
p2=110; //kN/m^2
M2=sqrt(2/(y-1)*((ps/p2)^((y-1)/y) - 1));
disp("M2=")
disp(M2)

T2=Ts*(p2/ps)^((y-1)/y);
C2=sqrt(y*R*T2);
V2=M2*C2;
disp("V2=")
disp(V2)
disp("m/s")

A2=(p1*A1*V1*T2/T1/p2/V2)*10^6;
disp("A2=")
disp(A2)
disp("mm^2")


disp("(iv) Pressure (pt), temperature (Tt), velocity (Vt), and flow area (At) at throat of the nozzle")
Mt=1;
Tt=Ts/(1+(y-1)/2*Mt^2);
disp("Tt =")
disp(Tt)
disp("K")

pt=ps*(Tt/Ts)^(y/(y-1));
disp("pt")
disp(pt)
disp("kN/m^2")

Ct=sqrt(y*R*Tt);
Vt=Mt*Ct;

At=(p1*A1*V1*Tt/T1/pt/Vt)*10^6;
disp("At=")
disp(At)
disp("mm^2")