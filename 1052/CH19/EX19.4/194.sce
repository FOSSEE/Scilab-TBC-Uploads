clc;
//Example 19.4
//page no 251
printf("Example 19.4 page no\n\n")
//water flow ina circular pipe,a pitot tube is used to measure the water velocity 
h=0.07//manometer height,m
rho=1000//density of water,kg/m^3
rho_m=13600//density of mercury,kg/m^3
g=9.807
v=sqrt(2*g*h*(rho_m-rho)/rho)
printf("\n water velocity v=%f m/s ",v);
D=0.0779//pipe inside diameter,by using table A.5 in the appendix for a 3 inch schedule 40 pipe
S=(%pi/4)*D^2
printf("/n cross sectional area S=%f m^2",S);
q=v*S//flow rate
printf("\n flow rate q=%f m^3/s",q);
meu=0.001//viscosity of water,kg/m.s
R_e=rho*v*D/meu//reynolds number
printf("\n reynolds no R_e=%f ",R_e);
