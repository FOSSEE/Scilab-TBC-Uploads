// scilab Code Exa 18.13 Turbojet Gas Turbine Engine

T1=223.15; // in Kelvin
n_C=0.75; // Compressor Efficiency
c1=85; // entry velocity in m/s
m=50; // mass flow rate of air in kg/s
R=287;
n_B=0.98; // Combustion chamber Efficiency
Qf=43*1e3; // Calorific Value of fuel in kJ/kg;
T03=1220;  // Turbine inlet stagnation temp in Kelvin
n_T=0.8; // Turbine Efficiency
gamma=1.4; // Specific Heat Ratio
n_m=0.98; // Mechanical efficiency
sigma=0.5; // flight to jet speed ratio(u/ce)
n_N=0.98; // exhaust nozzle efficiency
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
u=886/3.6; // flight speed of a turbo prop aircraft in m/s
delT=200; // temperature rise through the compressor(T02-T01) in K
pi=.701; // Initial Pressure in bar
n_D=0.88; // inlet diffuser efficiency
a1=sqrt(gamma*R*T1);
M1=u/a1; // Mach number at the compressor inlet
T1_01=0.881; // (T1/T01)from isentropic flow gas tables at M1 and gamma values
T01=T1/T1_01;
T1=T01-(0.5*(c1^2)/(cp*1e3));

// part(a) compressor pressure ratio
T02s=T01+(delT*n_C);
r_oc=(T02s/T01)^(gamma/(gamma-1)); //compressor pressure ratio(p02/p01)
disp(r_oc,"(a)compressor pressure ratio is")

// part(b)
T02=T01+delT;
f=((cp*T03)-(cp*T02))/((Qf*n_B)-(cp*T03)); // f=(ma/mf);energy balance in the combustion chamber 
disp(1/f,"(b)Air-Fuel Ratio is")

// part(c) turbine pressure ratio
// turbine power input P_T=n_m*(ma+mf)*cp*(T03-T01)
// power input to the compressor P_C=ma*cp*(T02-T01)
T04s=T03-(delT/(n_m*n_T*(1+f))); // from energy balance P_T=P_C
r_ot=(T03/T04s)^(gamma/(gamma-1)); //turbine pressure ratio(p03/p04)
disp(r_ot,"(c)turbine pressure ratio is")

// part(d)exhaust nozzle pressure ratio
ce=u/sigma; // jet velocity at the exit of the exhaust nozzle
T04=T03-(delT/(n_m*(1+f)));
Te=T04-(0.5*(ce^2)/(cp*1e3));
Tes=T04-((T04-Te)/n_N);
r_N=(T04/Tes)^(gamma/(gamma-1)); //exhaust nozzle pressure ratio(p04/pe)
disp(r_N,"(d)exhaust nozzle pressure ratio is")
ae=sqrt(gamma*R*Te);
Me=ce/ae; // Mach number
disp(Me,"and the Mach Number is")


