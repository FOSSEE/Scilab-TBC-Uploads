clc;
P01=7; // Pressure at inlet in bar
T01=300+273.15; // Temperature at inlet in kelvin
P02=3; // Pressure at outlet in bar
alpha_2=70; // Nozzle angle in degree
eff_N=0.9; // Isentropic efficiency of nozzle
WT=75; // Power Produced in kW
Cp=1.15; // Specific heat in kJ/kg K
r=1.33; // Specific heat ratio

T_02=T01*(P02/P01)^((r-1)/r); // Isentropic temperature after expansion
T02=T01-eff_N*(T01-T_02); // Actual temperature after expansion
c2=sqrt (2*Cp*10^3*(T01-T02)); // Absolute velocity
// For optimum blade speed ratio
u=(c2*sind (alpha_2)/2); // Mean blade velocity
beta_2=atand((c2*sind(alpha_2)-u)/(c2*cosd(alpha_2))); // Blade angle
// From velocity triangles
ct2=c2*sind(alpha_2);
w2=c2*cosd(alpha_2)/cosd(beta_2);
w3=w2; // Equal inlet and outlet angles
beta_3=54; // in degrees
ct3=w3*sind(beta_3)-u;
m=(WT*10^3)/(u*(ct2+ct3)); // Gas mass flow rate

disp ("degree",beta_2,"Blade angle = ");
disp ("kg/s",m,"Gas Mass Flow Rate = ");
