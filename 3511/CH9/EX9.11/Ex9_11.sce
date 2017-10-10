clc;
n=4; // Number of stage
rp=10; // Pressure ratio
eff_p_ac=0.92; // Ploytropic efficiency of axial compressor
eff_p_cc=0.83; // Polytropic efficiency of centrifugal compressor
Del_Trise=30; // Axial compressor stage temperature in kelvin
R=0.5; // Reaction stage
beta_2=20; // Outlet stator angle in degree
D=0.25; // Mean diameter of each stage in m
wf=0.8; // Work done factor
ca=150; // Axial velocity in m/s
Di=0.33; //Impeller diameter in m
mu=0.9; // Slip factor
p01=1.01; // Ambient pressure in bar
T01=288; // Ambient temperature in kelvin
pif=1.04; // Power input factor
Cp=1.005; // Specific heat in KJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

beta_1=atand (sqrt ((Cp*10^3*Del_Trise/(wf*ca^2))+(tand(beta_2)^2)));
u=ca*(tand (beta_1)+tand(beta_2));
Nac=(u/(3.14*D));
r1=(1+n*Del_Trise/T01)^(eff_p_ac*r/(r-1)); // Total pressure ratio across the axial compressor

r2=rp/r1; // Pressure ratio across centrifugal compressor
T02=T01*r1^((r-1)/(eff_p_ac*r));
T03=T02*r2^((r-1)/(eff_p_cc*r));
Del_Tsc=T03-T02;
u=sqrt ((Del_Tsc*Cp*10^3)/(pif*mu));
Ncc=u/(3.14*Di);

disp ("rps   (roundoff error)",Nac,"Speed of the axial compressor = ");
disp ("rps   (roundoff error)",Ncc,"Speed of the centrifugal compressor = ");
