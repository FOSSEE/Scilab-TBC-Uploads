// scilab Code Exa 18.31 Cantilever Type IFR turbine

P=150; // Power developed in kW
T01=960; // the gas entry temperature at nozzle in Kelvin
p01=3; // the gas entry pressure at nozzle in bar
beta2=45; // air angle at rotor blade entry (from radial direction)
beta3=65; // air angle at rotor blade exit (from radial direction)
d2=0.2; // rotor blade ring diameter at entry in m
d3=0.15; // rotor blade ring diameter at exit in m
gamma=1.4;
N=36e3; // rotor Speed in RPM
alpha_2=15;  //  air angle at nozzle exit(from tangential direction)
pr0=2.29; // total-to-static Pressure Ratio(p01/p3) 
n_N=0.94; // Nozzle Efficiency 
cp=1100; // Specific Heat at Constant Pressure in J/(kgK)
R=cp*((gamma-1)/gamma);
u2=%pi*d2*N/60;
u3=%pi*d3*N/60;

// part(a) mass flow rate of the gas
cr2_theta2=tand(alpha_2); // cr2_theta2=cr2/c_theta2
c_theta2=u2/(1-cr2_theta2); // c_theta2=cr2*tan(alpha2)+u2
cr2=c_theta2*cr2_theta2;
cr3=cr2;
c_theta3=(cr3*tand(beta3))-u3;
w_st=(u2*c_theta2)+(u3*c_theta3);
m=P/(w_st*1e-3);
disp("kg/s",m,"(a)mass flow rate of the gas is")

// part(b)rotor blade axial length at entry
c2=cr2/sind(alpha_2);
T2s=T01-((0.5*(c2^2))/(cp*n_N));
T2=T01-((T01-T2s)*n_N);
p_rn=(T2s/T01)^(gamma/(gamma-1));
p2=p01*p_rn;
rho2=(p2*1e5)/(R*T2);
b2=m/(rho2*cr2*%pi*d2);
disp("cm",b2*1e2,"(b)rotor blade axial length at entry is")

// part(c)total-to-total turbine efficiency
T03ss=T01*(pr0^((1-gamma)/gamma));
n_T=P/(m*cp*1e-3*(T01-T03ss));
disp("%",n_T*1e2,"(c)total-to-total turbine efficiency is")

//part(d)rotor blade length at exit
p03=p01/pr0;
T03=T01-(P/(m*cp*1e-3));
c3=sqrt((cr3^2)+(c_theta3^2));
T3=T03-((cr3^2)/(2*cp));
p3=p03*((T3/T03)^(gamma/(gamma-1)));
ro3=(p3*1e5)/(R*T3);
b3=m/(ro3*cr3*%pi*d3);
disp("cm",b3*1e2,"(d)rotor blade length at exit is")

// part(e) degree of reaction
DOR=(T2-T3)/(T01-T03);
disp("%",DOR*1e2,"(e)degree of reaction is")
