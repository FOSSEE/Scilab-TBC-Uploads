// scilab Code Exa 18.55 Propeller Thrust and Power

c_u=5; // upstream velocity in m/s
c_s=10; // downstream velocity in m/s
rho=1e3; // density of water in kg/m3
c=0.5*(c_u+c_s); // velocity of water through the propeller in m/s
d(1)=0.5; // propeller diameter in m
d(2)=1;
d(3)=1.5;
delh_0=0.5*((c_s^2)-(c_u^2));
delp_0=rho*delh_0;
disp("bar",delp_0*1e-5,"(b)stagnation pressure rise across the propeller is")
for i=1:3
    disp("cm",d(i)*1e2,"for propeller diameter=")
A=%pi*(d(i)^2)/4;
Q=c*A;
m=rho*Q;
disp("m3/s",Q,"(a) flow rate through the propeller is")
Fx=A*delp_0;
disp("kN",Fx*1e-3,"(c) thrust exerted by the propeller on the boat is")
P=m*delh_0;
disp("kW",P/1000,"(d)the ideal Power required to drive the propeller is")
end
