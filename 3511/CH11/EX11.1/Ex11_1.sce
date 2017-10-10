clc;
p02=6; // Inlet pressure in bar
T02=900; // Inlet temperature in kelvin
p0fs=1; // Outlet pressure in bar
eff_isenT=0.85; // insentropic efficiency of turbine
alpha_2=75; // Nozzle outlet angle in degree
u=250; // Mean blade velocity in m/s
Cp=1.15*10^3; // Specific heat in J/ kg K
r=1.333; // Specific heat ratio

T0fs=T02/(p02/p0fs)^((r-1)/r); // Isentropic temperature at the exit of the final stage
Del_Toverall=eff_isenT*(T02-T0fs); // Actual overall temperature drop
c2=2*u/sind (alpha_2); // absolute velocity
c3= c2*cosd (alpha_2);// absolute velocity
c1=c3; // From velocity triangles
Del_Tstage=(c2^2-c1^2)/(2*Cp); // Stage temperature drop
n=Del_Toverall/Del_Tstage; // Number of stages

disp (round (n),"Number of stages n =");
