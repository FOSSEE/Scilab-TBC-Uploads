clc;
T1=290; // Temperature at inlet in kelvin
n=10; // Number of stages
rp=6.5; // Pressure ratio
m=3; // mass flow rate in kg/s
eff_C=0.9; // isentropic efficiency of the compression
ca=110; // Axial velocity in m/s
u=180; // Mean blade velocity in m/s
Cp=1.005; // Specific heat in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

T_2=(rp)^((r-1)/r)*T1; // temperature after isentropic compression
T2=((T_2-T1)/eff_C)+T1; // Temperature after actual compression
P=m*Cp*(T2-T1); // Power given to the air
Del_Tstage=(T2-T1)/n; // Temperature rise per stage
Del_ct=Cp*10^3*Del_Tstage/u; // For work done per kg of air per second
// To find blade angles let solve the following equations
// Del_ct=ca(tan beta_1-tan beta_2) for symmetrical stages
// u=ca(tan beta_1=tan beta_2) for degree of reaction = 0.5
// Solving by matrix method
A=[1,-1;1,1]; C=[Del_ct/ca;u/ca];
B=A\C;
// Blade angles at entry and exit
beta_1=atand(B(1));
beta_2=atand(B(2));

disp ("kW   (roundoff error)",P,"Power given to the air = ");
disp ("degree",beta_2,"Blade angle at exit = ","degree",beta_1,"Blade angle at inlet = ");
