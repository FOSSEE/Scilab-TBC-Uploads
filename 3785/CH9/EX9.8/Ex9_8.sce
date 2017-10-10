// Example 9_8
clc;funcprot(0);
// Given data
L=50;// Lengths of garden hose in ft
D_A=3/4;// Diameter of hose A in inch
D_B=1/2;// Diameter of hose B in inch
p=40;// Pressure in the tank in psig
nu=1.0*10^-6;// The kinematic viscosity in m/s^2
rho=1*10^3;// The density of water in kg/m^3
g=9.807;// The acceleration due to gravity in m/s^2
epsilon=0;

// Calculation
D_A=D_A*2.54*10^-2;// m
D_B=D_B*2.54*10^-2;// m
L=L*0.3048;// m
deltah_l1=(p*6.895*10^3)/(rho*g);// m
deltah_A1=10;// m
deltah_B1=18.12;// m
sqrtoffintoRe_D_A=((2*g*deltah_A1*D_A^3)/(((nu)^2)*L))^(1/2);
Re_D_A=-2*sqrtoffintoRe_D_A*log10(2.51/(sqrtoffintoRe_D_A));// Reynolds number
Q_A1=(%pi*D_A*nu*Re_D_A)/4;// The volume flow rate in m^3/s
sqrtoffintoRe_D_B=((2*g*deltah_B1*D_B^3)/(((nu)^2)*L))^(1/2);
Re_D_B=-2*sqrtoffintoRe_D_B*log10((2.51/(sqrtoffintoRe_D_B)));// Reynolds number
Q_B1=(%pi*D_B*nu*Re_D_B)/4;// The volume flow rate in m^3/s
V_A=(4*Q_A1)/(%pi*D_A^2);// m/s
V_B=(4*Q_B1)/(%pi*D_B^2);// m/s
// Assume deltah=SigmaK*((V^2)/(2*g))
deltah=((0.4*V_A^2)+(0.4*V_B^2))/(2*g);// m
deltah_f=deltah_l1-deltah;// m
// We decide to allocate this total to
deltah_A2=2;// m
deltah_B2=25.43;// m
sqrtoffintoRe_D_A=((2*g*deltah_A2*D_A^3)/(((nu)^2)*L))^(1/2);
Re_D_A=-2*sqrtoffintoRe_D_A*log10((2.51/(sqrtoffintoRe_D_A)));// Reynolds number
Q_A2=(%pi*D_A*nu*Re_D_A)/4;// The volume flow rate in m^3/s
sqrtoffintoRe_D_B=((2*g*deltah_B2*D_B^3)/(((nu)^2)*L))^(1/2);
Re_D_B=-2*sqrtoffintoRe_D_B*log10((2.51/(sqrtoffintoRe_D_B)));// Reynolds number
Q_B2=(%pi*D_B*nu*Re_D_B)/4;// The volume flow rate in m^3/s
V_A=(4*Q_A2)/(%pi*D_A^2);// m/s
V_B=(4*Q_B2)/(%pi*D_B^2);// m/s
deltah_l2=((0.4*V_A^2)+(0.4*V_B^2))/(2*g);// m
//Indicating the first and second guesses by '1' and '2' we find a third guess to be:
deltah=deltah_A2-((Q_A2-Q_B2)*((deltah_A1-deltah_A2)/((Q_A1-Q_B1)-(Q_A2-Q_B2))));// m
printf('\nThe flow rate through the hoses Q_A=%1.3e m^3/s;Q_B=%1.3e m^3/s;SigmaK(V^2/2g)=%0.4f m',Q_A2,Q_B2,deltah_l2);
// The answer is vary due to roundoff error
