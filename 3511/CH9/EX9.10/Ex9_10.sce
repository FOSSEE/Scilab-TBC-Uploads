clc;
u=250; // Mean blade speed in m/s
rp=1.3; // Pressure ratio
ca=200; // Axial velocity in m/s
p01=1; // Inlet pressure in bar
T01=300; // Inlet temperature in kelvin
R1=0.5; // Degree of reaction
Cp=1.005; // Specific heat in KJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

Del_T=(rp^((r-1)/r)-1)*T01;
//tan_beta1+tan_beta2=(R*2*u/ca);
//tan_beta1-tan_beta2=(Del_T*Cp*10^3/(u*ca));
A=[1 1;1 -1]; B=[(R1*2*u/ca) ;(Del_T*Cp*10^3/(u*ca))];
tan_beta=A\B;
beta_1=atand (tan_beta(1));
beta_2=atand (tan_beta(2));
alpha_1=beta_2; alpha_2=beta_1;

disp ("degree",beta_2,"beta2 = ","degree",beta_1,"beta1 = ");
disp ("degree",alpha_2,"alpha2 = ","degree",alpha_1,"alpha1 = ");
