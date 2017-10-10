clc;
rp=4; // Total head pressure ratio
eff_O=0.85; // Overall total head isentropic efficiency
T01=290; // Total head inlet temperature in kelvin
alpha_1=10; // Inlet air angle in degree
alpha_2=45; // Outlet air angle in degree
u=220; // Blade velocity in m/s
wf=0.86; // Wok done factor
R=284.6; // Characteristic gas constant in kJ/kg K
Cp=1005; // Specific heat in J/kg K
r=1.4; // Specific heat ratio

eff_P=1/(log10(((rp^((r-1)/r)-1)/eff_O)+1)/(log10(rp)*((r-1)/r)));; 
// From velocity triangle
ca=u/(tand(alpha_1)+tand(alpha_2)); // Axial velocity
Del_Tstage=wf*u*ca*(tand(alpha_2)-tand(alpha_1))/Cp; // Stage temperature rise
T02=T01*(rp)^((r-1)/(r*eff_P)); // Total head temperature 
T02_T01=T02-T01; // Total temperature rise
n=T02_T01/Del_Tstage; // Total number of stages
// from velocty traingles
w1=ca/cosd(alpha_2);
c1=ca/cosd(alpha_1);
T1=T01-c1^2/(2*Cp); // Static temperature
M=w1/sqrt(r*R*T1); // Mach number at inlet

disp (eff_P*100,"Polytropic efficiency of the compressor = ");
disp (n,"Total number of stages = ");
disp (M,"Mach number at inlet = ");
