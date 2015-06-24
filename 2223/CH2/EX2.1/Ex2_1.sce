// scilab Code Exa 2.1 Calculation on a Diffuser 

p1=800; // Initial Pressure in kPa
T1=540;  // Initial Temperature in K
p2=580;  // Final Pressure in kPa
gamma=1.4; // Specific Heat Ratio
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
R=0.287; // Universal Gas Constant in kJ/kgK
g=9.81; // Gravitational acceleration in m/s^2
sg=13.6; // Specific Gravity of mercury
n=0.95; // Efficiency in %
AR=4; // Area Ratio of Diffuser
delp=(367)*(1e-3)*(g)*(sg); // Total Pressure Loss Across the Diffuser in kPa
pr=p1/p2; // Pressure Ratio
T2s=T1/(pr^((gamma-1)/gamma));
T2=T1-(n*(T1-T2s));
c2=sqrt(2*cp*(T1-T2));
ro2=p2/(R*T2);
c3=c2/AR;
m=0.5*1e-3*ro2*((c2^2)-(c3^2));
n_D=1-(delp/m);
disp ("%",n_D*1e2," Efficiency of the diffuser is")
p3=(p2+n_D*m)*1e-2;
disp("m/s",c2,"the velocity of air at diffuser entry is")
disp("m/s",c3,"the velocity of air at diffuser exit is")
disp("bar",p3,"static pressure at the diffuser exit is")
