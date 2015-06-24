// scilab Code Exa 18.1 Gas Turbine nozzle row 

T1=600;  // Entry Temperature of the gas in Kelvin
p1=10; // Inlet Pressure in bar
gamma_g=1.3;
delT=32; // Temperature drop of the gas(T1-T2) in K
cp_g=1.23*1e3; // Specific Heat of gas at Constant Pressure in kJ/(kgK)
pr1_2=1.3; // pressure ratio(p1/p2)
T2s=T1/(pr1_2^((gamma_g-1)/gamma_g));
delTs=T1-T2s;

// part(a) nozzle efficiency
n_N=delT/delTs;
disp("%",n_N*100,"(a) nozzle efficiency is")

// part(b)
disp("(b)(i)for ideal flow:")
p2=p1/pr1_2;
h_01=cp_g*T1;
h2s=cp_g*T2s;
c_2s=sqrt((h_01-h2s)/0.5);
disp("m/s",c_2s,"the nozzle exit velocity is")
R_g=cp_g*((gamma_g-1)/gamma_g);
M_2s=c_2s/(sqrt(gamma_g*R_g*T2s));
disp(M_2s,"and the Mach number is")
disp("(b)(ii)for actual flow:")
T2=T1-delT;
a2=sqrt(gamma_g*R_g*T2);
c_2=sqrt((cp_g*delT)/0.5);
disp("m/s",c_2,"the nozzle exit velocity is")
M2=c_2/a2;
disp(M2,"and the Mach number is")

// part(c) stagnation pressure loss across the nozzle
p01=p1;
p02=p2/0.79; // from isentropic gas tables p2/p02=0.79 at gamma=1.3 and M2=0.613
delp0=p01-p02;
disp("bar",delp0,"(c)the stagnation pressure loss across the nozzle is")

// part(d) nozzle efficiency based on stagnation pressure loss
delp=p1-p2;
n_N_a=1-(delp0/delp);
disp("%",n_N_a*100,"(d)the nozzle efficiency based on stagnation pressure loss is")
