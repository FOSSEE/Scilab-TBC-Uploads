clc;
N=10000; // Speed of gas turbine in rpm
T01=700+273.15; // Total head temperature at nozzle entry in kelvin
P01=4.5; //Total head pressure at nozzle entry in bar
P02=2.6; // Outlet pressure from nozzle in bar
p3=1.5;// Pressure at trbine outlet annulus in bar
M=0.5; // Mach number at outlet
alpha_2=70; // outlet nozzle angle in degrees
D=64; // Blade mean diameter in cm
m=22.5; // Mass flow rate in kg/s
eff_T=0.99; // turbine mechanical efficiency
Cp=1.147; // Specific heat in kJ/kg K
r=1.33; // Specific heat ratio
fl=0.03; // frictional loss
R=284.6; // characteristic gas constant in J/kg K

eff_N=1-fl; // Nozzle efficiency
T_02=(P02/P01)^((r-1)/r)*T01; // Isentropic temperature after expansion
T02=T01-eff_N*(T01-T_02); // Actual temperature after expansion
c2=sqrt (2*Cp*10^3*(T01-T02)); // Absolute velocity
u=(3.14*D*10^-2*N)/60; // Mean blade velocity
// From velocity triangles
wt2=c2*sind (alpha_2)-u;
ca=c2*cosd (alpha_2);
beta_2=atand((wt2)/ca);
T3=T02/(P02/p3)^((r-1)/r); // Assuming rotor losses are negligible
c3=M*sqrt (r*R*T3); // Absolute velocity
beta_3=atand(u/c3);
ct2=c2*sind(alpha_2);
P=eff_T*m*(ct2)*u/1000; // Power developed

disp ("degree",beta_3,"Gas angle at exit = ","degree",beta_2,"Gas angle at entry","(i).");
disp ("kW   (roundoff error)",P,"Power developed = ","(ii).");
