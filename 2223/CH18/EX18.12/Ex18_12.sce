// scilab Code Exa 18.12 turbo prop Gas Turbine Engine

Ti=268.65; // in Kelvin
n_C=0.8; // Compressor Efficiency
c1=85; // entry velocity in m/s
m=50; // mass flow rate of air in kg/s
R=287;
gamma=1.4; // Specific Heat Ratio
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
u=500/3.6; // speed of a turbo prop aircraft in m/s
delT=225; // temperature rise through the compressor(T02-T01) in K
pi=.701; // Initial Pressure in bar
n_D=0.88; // inlet diffuser efficiency
a_i=sqrt(gamma*R*Ti);
Mi=u/a_i;
Toi_i=1/0.965; // (Toi/Ti)from isentropic flow gas tables at Mi and gamma values
T01=Ti*Toi_i;
T1=T01-(0.5*(c1^2)/(cp*1e3));

//part(a)
T1s_i=1+n_D*((T1/Ti)-1); // (T1s/Ti)isentropic temperature ratio through the diffuser
p1_i=T1s_i^(gamma/(gamma-1)); // (p1s/pi)isentropic pressure ratio
p1=p1_i*pi;
delp_D=p1-pi;
disp("bar",delp_D,"(a)isentropic pressure rise through the diffuser is")

// part(b) compressor pressure ratio
T02s=T01+(delT*n_C);
r_oc=(T02s/T01)^(gamma/(gamma-1)); //compressor pressure ratio(p02/p01)
disp(r_oc,"(b)compressor pressure ratio is")

// part(c)
P=m*cp*delT;
disp("MW",P*1e-3,"(c)power required to drive the compressor is")

