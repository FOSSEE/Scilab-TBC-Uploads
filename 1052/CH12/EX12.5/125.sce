clc;
//Example 12.5
//page no 128
printf(" Example 12.5 page no 128\n\n");
SG=0.96//sp.gravity of a liquid
R=0.03//radius of long circular tube through which liquid  flow
//flow rate is related with the diameter of circular tube 
q=2*%pi*(3*R^2-(200/3)*R^3);
printf("\n volumatric flow rate  q=%f m^3/s",q);
rho_w=1000//density of water 
rho_l=SG*rho_w//density of liquid
m_dot=rho_l*q//mass flow rate 
printf("\n mass flow rate m_dot=%f kg/s",m_dot);
s=%pi*R^2//surface area
v_av=q/s//average velocity
printf("\n average velocity v_av=%f m/s",v_av);
