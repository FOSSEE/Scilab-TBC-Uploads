clc
m=6.5/60; //kg/s
cv=0.837; //kJ/kg K
p1=10*10^5; //Pa
p2=1.05*10^5; //Pa
T1=453; //K
R0=8.314;
M=44; //Molecular mass of CO2

R=R0/M;
cp=cv+R;
y=cp/cv;

T2=T1*(p2/p1)^((y-1)/y);
t2=T2-273;
disp("Final temperature=")
disp(t2)
disp("0C")

v2=R*10^3*T2/p2; //m^3/kg
disp("final specific volume =")
disp(v2)
disp("m^3/kg")

ds=0; //Reversible and adiabatic process
disp("Increase in entropy=")
disp(ds)

Q=0; //Adiabatic process
disp("Heat transfer rate from turbine=")
disp(Q)

W=m*cp*(T1-T2);
disp("Power delivered by the turbine=")
disp(W)
disp("kW")