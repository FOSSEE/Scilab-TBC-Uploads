 clc;
//Example 13.6
//page no 140
printf(" Example 13.6 page no 140\n\n");
//liquid glycerin flows in a tube 
//to obtain the properties of glycerine  use table A.2 in the appendix
rho=1260//density,kg/m^3
meu=1.49//viscosity,kg/ms
neu=meu/rho//kinematic viscosity,m^2/s
R=0.02//by no slip condition radius of tube,m
q=32*%pi*integrate('r-2500*r^3','r',0,R);//volumatric flow rate from the given parabolic velocity distribution
printf("vol. flow rate q=%f m^3/s",q);
r=0//for average velocity for laminar flow
v_av=16*(1-2500*r^2)/2//average velocity
q=0.010//approximation
m_dot=q*rho//mass flow rate
G=rho*v_av//mass flux 
M_dot=m_dot*v_av//inear momentum flux
printf("\n av. velocity v_av=%f m/s\n mass flow rate m_dot=%f kg/s\n mass flux G=%f kg/m^2.s\n linear mometum flux M_dot=%f N ",v_av,m_dot,G,M_dot);
