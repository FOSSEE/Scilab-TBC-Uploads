clc
di=0.0296; //m
d0=0.0384; //m
U=4000; //W/m^2 0C
V=3; //m/s
t_c1=24; //0C
x=0.9;
ps=(760-660)/760*1.0133; //bar
t_h1=51; //0C
t_h2=51; //0C
h_fg=2592; //kJ/kg
t_c2=47; //0C
P=15; //MW
ssc=5; //specific steam consumption in kg/kWh
cpc=4.187; //kJ?kg K
rho=1000;

m_s=P*10^3*ssc/60; //kg/min

disp("(i) Mass of cooling water circulated per minute =")
m_w=m_s*x*h_fg/cpc/(t_c2-t_c1);
disp(m_w)
disp("kg/min")


disp("(ii) Condenser surface area")
Q=m_s*x*h_fg*10^3/60;

theta=((t_h1-t_c1)- (t_h2-t_c2))/log((t_h1-t_c1)/(t_h2-t_c2)); //Logarithmic mean temperature difference
A=Q/U/theta;
disp(A)
disp("m^2")


disp("(iii) Number of tubes required per pass =")
Np=m_w/60*4/%pi/di^2/V/rho;
disp(Np)


disp("(iv) Tube length =")
L=A/%pi/d0/(2*Np);
disp(L)
disp("m")