// scilab Code Exa 8.5 compressor type radial cascade tunnel

M=0.7; // Mach Number
pr=0.721; // pr=pt/p0 From isentropic gas tables
t_opt=0.911; // t_opt=Tt/T0
pa=1.013; //  Atmospheric Pressure in bar
Ta=306; // in K
n_c=0.65; // efficiency
R=288;
gamma=1.4;
alpha=30;
dm=45/100; // mean diameter of the impeller blade in m
b=10/100; // blade width in m
cp_a=1.008; // Specific Heat of air at Constant Pressure in kJ/(kgK)

// part(a) pressure ratio of the compressor
pr_c=1/pr;
disp(pr_c,"(a)pressure ratio of the compressor is")

// part(b) stagnation pressure in the settling chamber
p02=pa*pr_c;
disp("bar",p02,"(b)stagnation pressure in the settling chamber is")

// part(c)test section conditions(static pressure, temperature and velocity)
n=(gamma-1)/gamma;
T02s=Ta*(pr_c^((gamma-1)/gamma));
T02=Ta+((T02s-Ta)/n_c);
T_t=t_opt*T02;
p_t=pr*p02;
c_t=M*sqrt(gamma*R*T_t);
disp("(c)test section conditions are given by: ")
disp("bar",p_t,"static pressure of air in the test section is")
disp("K",T_t,"static temperature of air in the test section is")
disp("m/s",c_t,"velocity of air in the test section is")

// part(d) determining mass flow rate
c_r=c_t*sind(alpha);
ro_t=p_t*1e5/(R*T_t); // density of air in kg/m3
A_t=%pi*dm*b;
m=ro_t*A_t*c_r;
disp("kg/s",m,"(d) mass flow rate of compressor is")

// part (e) determining the power required to drive the air compressor
delh_s=cp_a*(T02-Ta);
P=m*delh_s;
disp("kW",P,"(e)Power required to drive the air compressor is")
