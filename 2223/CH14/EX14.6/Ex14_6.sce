// scilab Code Exa 14.6 open propeller fan
c_u=5; // upstream velocity in m/s
c_s=25; // downstream velocity in m/s
t=37; // in degree C
T=t+273; // in Kelvin
d=0.5;
p=1.02; // Initial Pressure in bar
R=287;
n_o=0.4; // overall Efficiency of the fan
A=%pi*(d^2)/4;
c=0.5*(c_u+c_s);
Q=c*A;
ro=(p*1e5)/(R*T);
m=ro*c*A;
disp("kg/s",m,"(a) flow rate through the fan is")
delh_0=0.5*((c_s^2)-(c_u^2));
delp_0=ro*delh_0;
disp("mm W.G.",delp_0/9.81,"(b)static pressure rise in the stage is")
P=m*delh_0/n_o;
disp("kW",P/1000,"(c)Power required to drive the fan is")
