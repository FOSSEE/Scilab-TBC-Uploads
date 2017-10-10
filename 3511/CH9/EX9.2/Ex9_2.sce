clc;
P1=1.0132; // Inlet air pressure in bar
T01=288; // Inlet air temperature in kelvin
ca=150; // axial velocity in m/s
dtip=60; // Tip diameter of rotor in cm
dhub=50; // Hub diameter of rotor in cm
N=100; // Speed of rotor in rps
t_angle=30; // Deflected angle of air in degree (in question it is 30.2 but in solution it is 30)
P2_P1=1.2; // Stage pressure ratio
Cp=1005; // Specific heat in J/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

u=(3.142857*(dhub+dtip)*10^-2*N)/2; // Mean blade velocity
beta_1=atand(u/ca); // Blade angle at inlet
beta_2=beta_1-t_angle; // As air is deflected by 30
// from velocity triangle
x=ca*tand(beta_2);
alpha_2=atand ((u-x)/ca);
C1=ca;
T1=T01-(C1^2/(2*Cp)); // Static temperature at inlet
P2=P1*P2_P1; // Pressure at outlet
T2=T1*(P2/P1)^((r-1)/r); // Static temperature at outlet
row_2=(P2*10^5)/(R*T2); // Density at outlet
m=3.14*(dtip^2-dhub^2)*ca*row_2*10^-4/4; // Mass flow rate
wf=1; // Work factor
P=wf*u*ca*m*(tand(beta_1)-tand(beta_2))/1000; // Power developed
R=ca*(tand(beta_1)+tand(beta_2))/(2*u); // Degree of reaction

disp ("kg/s",m,"Mass flow rate = ");
disp("kW    (Error due to more decimal values in expression)",P,"Power developed = ");
disp (R,"Degree of Reaction = ");
