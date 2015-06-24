// scilab Code Exa 2.6 calculation on a gas turbine

funcprot(0);
p1=5; // Inlet Pressure in bar
p2=1.2; // Exit Pressure in bar
T1=500;  // Initial Temperature in K
gamma=1.4;
m=20; // mass flow rate of the gas in kg/s
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
n_T=0.9; // Overall Efficiency 
pr=p1/p2; // Pressure Ratio
// part(a)
T2s=T1/(pr^((gamma-1)/gamma));
T2=T1-(n_T*(T1-T2s));
n_p=(log(T1/T2))/(log(T1/T2s));
disp("%",n_p*100,"(a)small stage Efficiency or polytropic efficiency of the expansion is")
P=m*cp*(T1-T2);
disp("kW",P,"and Power developed is")

// part(b)
AR=2.5; // Area Ratio of Diffuser
R=0.287; // Universal Gas Constant in kJ/kgK
p3=1.2; // Exit Pressure for diffuser in bar
c2=75; // Velocity of gas at turbine exit in m/s
c3=c2/AR;
n_d=0.7; // Efficiency of the diffuser
ro2=p2/(R*T2);
delp=n_d*(0.5*0.001*ro2*((c2^2)-(c3^2))); // delp=p3-p2d
disp("mm W.G.",delp*100000/9.81,"(b)static pressure across the diffuser is")
p2d=p3-delp;
prd=p1/p2d;
T2sd=T1/(prd^((gamma-1)/gamma));
T2d=T1-(n_T*(T1-T2sd));
Pd=m*cp*(T1-T2d);
disp("kW",Pd-P,"and Increase in the power output of the turbine is")

disp("Comment: Error in Textbook, Answers vary due to Round-off Errors")
