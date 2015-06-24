// scilab Code Exa 18.19 blower type wind tunnel 

T01=310;  // in Kelvin
p01=1.013; //  Initial Pressure in bar
n_n=0.96; // nozzle efficiency
n_c=0.78; // compressor efficiency
Ma(1)=0.5;
Ma(2)=0.9;
pi(1)=0.837; // from isentropic flow gas tables
pi(2)=0.575;
gamma=1.4; // Specific Heat Ratio
R=287;
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)

for i=1:2
printf("when Ma=%f",Ma(i))
//part(a)
Ms=((n_n/(Ma(i)^2))-(((gamma-1)/2)*(1-n_n)))^(-1/2);
disp(Ms,"(a)Mach number for isentropic flow is")

// part(b)
p0e=1;
p_r0(i)=p0e/pi(i);
disp(p_r0(i),"(b)pressure ratio of the compressor is")

// part(c)
delT0e_0i=((p_r0(i)^((gamma-1)/gamma))-1)/n_c;
T0e=T01+(T01*delT0e_0i);
delT0e_t=n_n*(1-(p_r0(i)^((1-gamma)/gamma)))*T0e;
T_t=T0e-delT0e_t;
disp("K",T_t,"(c)the test section temperature is")
a_t=sqrt(gamma*R*T_t);
c_t=Ma(i)*a_t;
disp("m/s",c_t,"and the test section velocity is")

// part(d)
ro_t=p01*1e5/(R*T_t);
A_t=0.17*0.15;
m=ro_t*A_t*c_t;
disp("kg/s",m,"(d)mass flow rate is")

// part(e)
P(1)=m*cp*(T0e-T01);
P(2)=m*cp*(T_t-T01);
disp("kW",P(i),"(e)power required for the compressor is")
end
