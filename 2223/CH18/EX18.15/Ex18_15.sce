// scilab code Exa 18.15 Impulse Steam Turbine 3000 rpm

P=500; // Power Output in kW
u=100; // peripheral speed of the rotor blades in m/s
cy2=200; // whirl component of the absolute velocity at entry of the rotor
cy3=0; // whirl component of the absolute velocity at exit of the rotor
alpha2=65; // nozzle angle at exit
n_st=0.69; // isentropic stage efficiency
p2=8; // steam pressure at the exit of the first stage in bar
t2=200; // steam temperature at the exit of the first stage in degree C
N=3e3; // rotor Speed in RPM

//part(a)Mean diameter of the stage
d=u*60/(%pi*N);
disp("m",d,"(a)Mean diameter of the stage is")

// part(b)mass flow rate of the steam
w_st=2*(u^2)*1e-3; // specific work
m=P/w_st;
disp("kg/s",m,"(b)mass flow rate of the steam is")

// part(c)isentropic enthalpy drop
delh_s=w_st/n_st;
disp("kJ/kg",delh_s,"(c)isentropic enthalpy drop is")

// part(d)rotor blade angles
cx=cy2/(tand(alpha2));
beta3=atand(u/cx);
disp("degree",beta3,"(d)the rotor blade angles are beta2=beta3=")

// part(e)blade height at the nozzle exit
v_s2=0.2608; // from steam tables at p2=8bar and t2=200 degree C
Q=m*v_s2;
h=Q/(cx*%pi*d);
disp("m",h,"(e)blade height at the nozzle exit is")
