clc;
D=0.15; // Inlet eye diameter in m
N=20000; // Speed in rpm
ca1=107; // Axial velocity in m/s
T01=294; // Inlet temperature in kelvin
p01=1.03; // Inlet pressure in kg/cm^2
Cp=1.005; // specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

u1=3.14*D*N/60;
beta_1=atand (ca1/u1);// Blade angle 
cr=u1/cosd (beta_1);
a=sqrt (r*R*(T01-ca1^2/(2*Cp*10^3)));
M=cr/a; // Mach number at the tip

disp ("degree",beta_1,"(i).Theoretical angle of the blade at this point = ");
disp (M,"(ii).Mach number of the flow at the tip of the eye = ");
