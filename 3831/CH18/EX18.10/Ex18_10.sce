// Example 18_10
clc;funcprot(0);
// Given data
theta_r=0.562;// K
theta_v1=1932;// K
theta_v3=960;// K
theta_v2=theta_v3;// K
theta_v4=3380;// K
p=101325;// Pa
T=1000;// K
R_u=8.314;// kJ/kg.K
M=44.01;// The molecular mass of Carbon dioxide
h_c=6.626*10^-34;// Planck's constant
N_o=6.023*10^26;// molecules/kgmole
k=1.38*10^-23;// J/molecule.K


// Calculation
m=M/N_o;// kg/molecule
R=R_u/M;// kJ/kg.K
u_o_vib=R*((theta_v1+theta_v2+theta_v3+theta_v4)/2);// kJ/kg
u_vib=u_o_vib+(R*((theta_v1*exp(theta_v1-1)^-1)+(theta_v2*exp(theta_v2-1)^-1)+(theta_v3*exp(theta_v3-1)^-1)+(theta_v4*exp(theta_v4-1)^-1)));// kJ/kg
u_trans=(3/2)*R*T;// kJ/kg
u_rot=R*T;// kJ/kg
u=u_trans+u_rot+u_vib;// kJ/kg
h=u+(R*T);// kJ/kg
Sigma=2;// molecules/m^3
d=((((2*%pi*m)/(h_c^2))^(3/2))*(k*T)^(5/2))/p;// per molecule
s_trans=R*(log(d)+(5/2));// kJ/kg.K
s_rot=R*(log(T/(Sigma*theta_r))+1);// kJ/kg.K
s_vib=R*[(((log(1-exp(-theta_v1/T))^-1)+((theta_v1/T)*[exp(theta_v1/T)-1]^-1))+((log(1-exp(-theta_v2/T))^-1)+((theta_v2/T)*[exp(theta_v2/T)-1]^-1))+((log(1-exp(-theta_v3/T))^-1)+((theta_v3/T)*[exp(theta_v3/T)-1]^-1))+((log(1-exp(-theta_v4/T))^-1)+((theta_v4/T)*[exp(theta_v4/T)-1]^-1)))];// kJ/kg.K
s=s_trans+s_rot+s_vib;// kJ/kg.K
printf("\nThe specific internal energy of CO2,u=%4.0f kJ/kg \nThe specific enthalpy of CO2,h=%4.0f kJ/kg \nThe specific entropy of CO2=%1.3f kJ/kg.K",u,h,s);
// The answer provided in the text book is wrong
