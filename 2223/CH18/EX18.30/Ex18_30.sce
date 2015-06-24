// scilab Code Exa 18.30 Inward Flow Radial Gas turbine

T1=873; // the gas entry temperature at nozzle in Kelvin
p1=4; // the gas entry pressure at nozzle in bar
n_T=0.85; // isentropic efficiency
d2=0.4; // rotor blade ring diameter at entry in m
d3=0.2; // rotor blade ring diameter at exit in m
pr_t=4; // static Pressure Ratio across the turbine(p3/p1)
pr_n=2; // static Pressure Ratio across the nozzles(p3/p1) 
phi=0.3; // flow coefficient at impeller entry
gamma=1.4;
N=18e3; // rotor Speed in RPM
m=5; // mass flow rate of gas in kg/s
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
R=287;
u2=%pi*d2*N/60;
u3=%pi*d3*N/60;
cr2=phi*u2;
// part(a)
T3ss=T1/(pr_t^((gamma-1)/gamma));
T3=T1-n_T*(T1-T3ss);
T2s=T1/(pr_n^((gamma-1)/gamma));
T2=T2s+(0.5*(T3-T3ss)); // half of the losses(T3-T3ss) occur in the nozzles
p2=p1/pr_n;
rho2=(p2*1e5)/(R*T2);
b2=m/(rho2*cr2*%pi*d2);
disp("cm",b2*1e2,"(a)axial width of the impeller blade passage at entry is")
alpha2=atand(cr2/u2);
disp("degree",alpha2,"(b)nozzle exit air angle is")
cx3=cr2;
beta3=atand(cx3/u3);
disp("degree",beta3,"(c)impeller exit air angle is")
c_theta3=0;
c_theta2=u2;
P=m*(u2*c_theta2-u3*c_theta3);
disp("kW",P*1e-3,"(d)power developed is")
