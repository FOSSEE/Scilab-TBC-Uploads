clc
m=5; //kg
T1=550; //K
p1=4*10^5; //Pa
T2=290; //K
T0=T2;
p2=1*10^5; //Pa
p0=p2;
cp=1.005; //kJ/kg K
cv=0.718; //kJ/kg K
R=0.287; //kJ/kg K

disp("(i) Availability of the system :")
ds=cp*log(T1/T0) - R*log(p1/p0);
Availability=m*[cv*(T1-T0) - T0*ds];
disp("Availability of the system =")
disp(Availability)
disp("kJ")


disp("(ii) Available energy and Effectiveness")
Q=m*cp*(T1-T0);
dS=m*cp*log(T1/T0);
E=T0*dS; //Unavailable energy
AE=Q-E;
disp("Available Energy = ")
disp(AE)
disp("kJ")

disp("Effectiveness=")
Effectiveness=AE/Availability;
disp(Effectiveness)
