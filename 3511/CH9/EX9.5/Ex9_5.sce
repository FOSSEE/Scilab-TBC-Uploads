clc;
Q=1000; // Flow rate of free air in m^3/min
P1=0.98; // Inlet pressure in bar
T1=15+273; // Inlet temperature in kelvin
Dm=0.6; // Mean diameter in m
h=6.75; // blade length in cm
CL=0.6; CD=0.05; // At zero angle of incidence
Cp=1.005; // Specific heat in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K
k=1-0.1; //Blade occupys 10% of axial area
N=6000; // speed in rpm
Ac=19.25*10^-4; // Projected area in m^2
n=50;
eff_C=1; // Efficiency of compressor

row=(P1*10^5)/(R*T1); // Density
A=k*3.14*Dm*h*10^-2; // Area of axial
ca=Q/(60*A); // Axial velocity
u=3.14*Dm*N/60; // Blade velocity
beta_1=atand(u/ca); // Blade angle at inlet
w=sqrt (ca^2+u^2); // From velocity triangle
L=CL*row*w^2*Ac/2;
D=CD*row*w^2*Ac/2;
P=(L*cosd(beta_1)+D*sind (beta_1))*u*n*10^-3; // Power input / stage
m=Q*row/60;// mass flow rate
rp=((P*eff_C/(m*Cp*T1))+1)^(r/(r-1)); // pressure ratio
P2=rp*P1; // Pressure

disp ("kW   (Roundoff error )",P,"Power input/stage = ");
disp ("bar",P2,"Pressure at outlet = ");
