// scilab Code Exa 13.3 IFR turbine with Cantilever Blades
phi=0.4; // flow coefficient
funcprot(0);
P=100; // Power developed in kW
n_tt=0.9; // total-to-total Efficiency
N=12e3; // rotor Speed in RPM
m=1; // in kg/s
T01=400;  // in Kelvin
gamma=1.4;
d_r=0.8; // rotor diameter ratio(d3/d2)
u2=sqrt(P*1000/(2*m));
d2=60*u2/(%pi*N);
disp("cm",d2*1e2,"the rotor diameter at entry is")
d3=d2*d_r;
disp("cm",d3*1e2,"the rotor diameter at exit is")
beta2=atand(phi);
disp("degree",beta2,"air angle at rotor entry is beta2=")
d3=d2*d_r;
u3=%pi*d3*N/60;
c_r2=u2*phi;
beta3=atand(c_r2/u3);
disp("degree",beta3,"air angle at rotor exit is beta3=")
cp=1005;
n=(gamma-1)/gamma;
alpha_2=atand(c_r2/(2*u2));
disp("degree",alpha_2,"air angle at nozzle exit is alpha_2=")
p01_03=(1-((2*(u2^2))/(n_tt*cp*T01)))^(-1/n);
disp(p01_03,"stagnation pressure ratio across the stage is")
