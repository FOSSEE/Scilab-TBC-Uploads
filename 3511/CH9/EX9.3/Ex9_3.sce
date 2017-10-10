clc;
beta_1=45; // Inlet blade angle in degree
beta_2=10; // Outlet blade angle in degree
rp=6; // Compressor pressure ratio
eff_C=0.85;// Overall isentropic efficiency
T1=37+273; // Inet static temperature in kelvin
u=200; // Blade speed in m/s
Cp=1005; // Specific heat in J/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

// (i). wf=1
wf=1; // Work factor
ca=u/(tand(beta_1)+tand(beta_2)); // Axial velocity
Del_Tstage=wf*u*ca*(tand(beta_1)-tand(beta_2))/Cp; // Stage temperature drop
Del_Toverall=(T1*(rp^((r-1)/r)-1))/eff_C; // Overall temperature drop
n=Del_Toverall/Del_Tstage; // No of stages

disp (n,"Number of stages required = ","(i).wf = 1");

// (ii).wf = 0.87
wf =0.87; // Work factor
ca=u/(tand(beta_1)+tand(beta_2)); // Axial velocity
Del_Tstage=wf*u*ca*(tand(beta_1)-tand(beta_2))/Cp; // Stage temperature drop
Del_Toverall=T1*(rp^((r-1)/r)-1)/eff_C; // Overall temperature drop
n=Del_Toverall/Del_Tstage; // No of stages

disp (n,"Number of stages required = ","(ii).wf = 0.87");
