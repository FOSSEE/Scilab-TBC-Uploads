// scilab Code Exa 18.6 Calculations on a Gas Turbine 

m=472; // flow rate of hot gases in kg/s
T01=1335;  // Turbine inlet temp in Kelvin
p01=10; // Turbine Inlet Pressure in bar
c2=150; // exit velocity in m/s
pr0=10; // Turbine pressure ratio
gamma_g=1.67;
T2=560;  // Temperature of gases at exit in Kelvin
cp_g=1.157; // Specific Heat of gas at Constant Pressure in kJ/(kgK)

// part(a) Determining total to total efficiency
T02=T2+(0.5*(c2^2)/(cp_g*1e3));
T02s=T01/(pr0^((gamma_g-1)/gamma_g));
n_tt=(T01-T02)/(T01-T02s);
disp("%",n_tt*100,"(a)total to total efficiency is")


// part(b) Determining total to static efficiency
T2s=T02s-(0.5*(c2^2)/(cp_g*1e3));
n_ts=(T01-T02)/(T01-T2s);
disp("%",n_ts*100,"(b)total to static efficiency is")

// part(c) Determining the polytropic efficiency
n_p=((gamma_g)/(gamma_g-1))*((log(T01/T02))/(log(pr0)));
disp("%",n_p*100,"(c)polytropic efficiency is")

// part(d) Determining power developed by the turbine
P=m*cp_g*(T01-T02);
disp("MW",P/1e3,"(d)Power developed by the turbine is")
