// scilab Code Exa 18.22 Isentropic or Stage Terminal Velocity for Turbines 

T01=1273;  // in Kelvin
funcprot(0);
p01=5; //  Initial Pressure in bar
p02=3.5; //  exit gas Pressure in bar
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
gamma=1.4; // Specific Heat Ratio
m=28; // mass flow rate of the gas in kg/s
n_tt=0.84; // stage efficiency
shi=1.7; // stage loading coefficient
pr_0=p01/p02;
delh01_03ss=cp*T01*(1-(pr_0^((1-gamma)/gamma)));

//part(a)stage terminal velocity
c0=sqrt(2*delh01_03ss*1e3);
disp("m/s",c0,"(a)stage terminal velocity is")

// part(b)isentropic blade to gas speed ratio
sigma_s=sqrt(0.5*n_tt/shi);
disp(sigma_s,"(b)the isentropic blade to gas speed ratio is")

//part(c) peripheral speed of the rotor
u=sigma_s*c0;
disp("m/s",u,"(c)peripheral speed of the rotor is")

//part(d) the power developed
P=m*n_tt*delh01_03ss;
disp("MW",P*1e-3,"(d) the power developed is")
