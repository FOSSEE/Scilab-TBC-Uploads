// scilab Code Exa 3.5 Calculations on Gas Turbine Plant 

P=10e4; // Power Output in kW
T1=310;  // Minimum  cycle Temperature in Kelvin
p1=1.013; // Compressor Inlet Pressure in bar
pr_c=8; // Compressor pressure ratio
gamma=1.4;
gamma_g=1.33;
R=0.287; 
p2=pr_c*p1; // Compressor Exit Pressure in bar
T3=1350;  // Maximum cycle Temperature(Turbine inlet temp) in Kelvin
n_c=0.85; // Compressor Efficiency
p3=0.98*p2; // turbine inlet pressure
p4=1.02; // turbine exit pressure in bar
CV=40*10e2; // Calorific Value of fuel in kJ/kg;
n_B=0.98; // Combustion Efficiency
n_m=0.97; // Mechanical efficiency
n_t=0.9; // Turbine Efficiency
n_G=0.98; // Generator Efficiency
cp_a=1.005; // Specific Heat of air at Constant Pressure in kJ/(kgK)

// Air Compressor
T2s=T1*(pr_c^((gamma-1)/gamma));
T2=T1+((T2s-T1)/n_c);
w_c=cp_a*(T2-T1);

// Gas Turbine
n_g=(gamma_g-1)/gamma_g;
cp_g=1.157; // Specific Heat of gas at Constant Pressure in kJ/(kgK)
pr_t=p3/p4;
T4s=T3/(pr_t^((gamma_g-1)/gamma_g));
T4=T3-(n_t*(T3-T4s));
w_t=cp_g*(T3-T4);
w_net=w_t-w_c;
w_g=n_m*n_G*w_net;

// part(a) Determining Gas Flow Rate
m_g=P/w_g;
disp ("kg/s",m_g,"(a)Gas flow rate is")

// part(b) Determining Fuel-Air Ratio
F_A=((cp_g*T3)-(cp_a*T2))/((CV*n_B)-(cp_g*T3));
disp(F_A,"(b)Fuel-Air Ratio is")

// part(c) Air flow rate
m_a=m_g/(1+F_A);
disp("kg/s",m_a,"(c)Air flow rate is")

// part(d) Determining thermal efficiency of the plant
m_f=m_g-m_a;
n_th=m_g*w_net/(m_f*CV);
disp ("%",n_th*100,"(d)thermal efficiency of the plant is")

// part(e) Determining Overall efficiency of the plant
n_o=n_m*n_G*n_th;
disp ("%",n_o*100,"(e)overall efficiency of the plant is")

// part(f) Determining ideal Joule cycle efficiency
n_Joule=1-(1/(pr_c^((gamma-1)/gamma)));
disp ("%",n_Joule*100,"(f)efficiency of the ideal Joule cycle is")

