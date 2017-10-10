// Example 12_7
clc;funcprot(0);
// Given data
D=1;// The diameter of gas pipeline in m
epsilon=5*10^-5;// Surface roughness in m
p_1=2*10^6;// Pressure in Pa
T_1=20;// Temperature in °C
a_1=446.1;// The natural gas sound speed in m/s
mu_1=9*10^-6;// Viscosity in Pa s
r=1.31;// The specific heat ratio
R=518.3;// The gas constant in J/kg.K
V_1=10;// The pipe flow speed in m/s

// Calculation
rho_1=(p_1)/(R*(T_1+273.15));// The density in kg/m^3
Re_D=(rho_1*V_1*D)/mu_1;// Reynolds number
function[X]=frictionfactor(y)
    X(1)=-(2.0*log10(((epsilon/D)/3.7)+(2.51/(Re_D*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
// Guessing a value of f=1*10^-2;
y=[1*10^-2];
f=fsolve(y,frictionfactor);// Friction factor
M_1=V_1/a_1;// Mach number
L_max=((D/f)*(((1-M_1^2)/(r*M_1^2))+(((r+1)/(2*r))*log(((r+1)*M_1^2)/(2*(1+((r-1)*M_1^2/2)))))))/1000;// The pipe length at which the flow would be choked in m
V_c=((V_1/M_1)*(sqrt((2+((r-1)*M_1^2))/(r+1))));// The flow speed in m/s
p_c=(p_1*V_c*M_1^2)/V_1;// The pressure at the point of choked flow in Pa
printf("\nThe pipe length at which the flow would be choked,L_max=%3.1f km \nThe flow speed at the point of choked flow,V_c=%3.0f m/s \nThe pressure at the point of choked flow,p_c=%1.3e Pa",L_max,V_c,p_c);
