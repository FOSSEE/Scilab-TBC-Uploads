clc;
//Exanmple 14.7
//page no 160
printf("Example 14.7 page no 160\n\n");
//kerosene flow ina lng ,smooth ,horizontal pipe
rho=820//density,kg/m^3
D=0.0493//iside diameter of pipe by appendix A.5,m
R_e=60000
meu=0.0016//viscosity,kg/m.s
v=(R_e*meu)/(D*rho)// flow average velocity
printf("\n average velocity v=%f m/s",v);
S=(%pi/4)*D^2//cross sectional area
printf("\n S=%f ",S);
q=v/S//flow rate 
printf("\n flow rate q=%f m^3/s",q);//printing mistake in book
m_dot=rho*q//mass flow rate
printf("\n mass flow rate m_dot=%f kg/s",m_dot);//printing mistake in book in the value of v
n=7//seventh power apply
v_max=v/(2*n^2/((n+1)*(2*n+1)))//maximum velocity
printf("\n v_max=%f m/s",v_max);
//check the assumptioon of fully developed flow
R_e=60000//reynolds no
L_c=4.4*R_e^(1/6)*D//critical length
printf("\n length L_c=%f m",L_c);
//since L_c <L th eassumption is valid
