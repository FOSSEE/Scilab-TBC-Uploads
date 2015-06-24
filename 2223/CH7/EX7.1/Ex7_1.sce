// scilab Code Exa 7.1 Calculation for the specific speed
funcprot(0)
//part(a)specific speed of gas turbine
P=2e3; // Gas Turbine Power Output in kW
N=16e3; // Speed in RPM
T1=1e3;  // Entry Temperature in Kelvin
p1=50; //  Entry Pressure in bar
p2=25; //  Exit Pressure in bar
cp=1.15e3; // Specific Heat at Constant Pressure in J/(kgK)
gamma_g=1.3;
omega=%pi*2*N/60;
ro=p1*1e5/(((gamma_g-1)/gamma_g)*cp*T1);
pr=p2/p1; //  pressure ratio
T2s=T1*(pr^((gamma_g-1)/gamma_g));
delh_s=cp*(T1-T2s);
NS=omega*sqrt(P*10e2/ro)*delh_s^(-5/4)
disp(NS,"(a)the specific speed of gas turbine is")

// part(b)the specific speed of a centrifugal compressor
pr_b=2; // Compressor pressure ratio
N_b=24e3; // Speed in RPM
m=1.5; //  in kg/s
cp_a=1.005e3; // Specific Heat of air at Constant Pressure in kJ/(kgK)
R=0.287;
gamma=1.4;
T1_b=300;  // Entry Temperature in Kelvin
p1_b=1; //  Entry Pressure in bar
ro_b=p1_b*1e2/(R*T1_b);
omega_b=%pi*2*N_b/60;
Q=m/ro_b;
T2=T1_b*(pr_b^((gamma-1)/gamma));
delh_s_b=cp_a*(T2-T1_b);
NS_b=omega_b*sqrt(Q)*delh_s_b^(-3/4);
disp(NS_b,"(b)the specific speed of a centrifugal compressor is")

// part(c)the specific speed of an axial compressor
pr_c=1.4; // Compressor pressure ratio
N_c=6e3; // Speed in RPM
m_c=15; //  in kg/s
omega_c=%pi*2*N_c/60;
Q_c=m_c/ro_b;
T2_c=T1_b*(pr_c^((gamma-1)/gamma));
delh_s_c=cp_a*(T2_c-T1_b);
NS_c=omega_c*sqrt(Q_c)*delh_s_c^(-3/4)
disp(NS_c,"(c)the specific speed of an axial compressor is")
