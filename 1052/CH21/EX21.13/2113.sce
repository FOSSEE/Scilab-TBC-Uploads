clc;
//Example 21.13
//page no 289 figure 21.1
printf("Example 21.13 page no 289 fig 21.1  \n\n\n");
//a pitot tube is inserted in acircular pipe  to measure the flow velocity
// the tube is inserted so that it points upstream into the flow and the pressure sensed by thre probeis the stagnation pressure 
//the change in elevation between the tip of the pitot and the wall pressure tap is negligible 
//the flowing fluid is soyabean oil at 20 deg C and the fluid in manometer tube is mercury
//point 2 is a stagnation point ,P2>P1 and the manometer fluid should be higher on th eleft side(h<0) 
rho_m=13600//density of mercury,kg/m^3
h=0.04//height of mercury,
rho=919//density of oil kg/m^3
g=9.804
D=0.055//diameter of pipe,m
meu=0.04//viscosity of oil,kg.m.s
v=sqrt(2*g*h*((rho_m/rho)-1))//flow velocity
printf("\n flow velocity v=%f m/s",v);
//assuming uniform velocity
S=(%pi/4)*D^2
m_dot=rho*v*S//mass flow rate
R_e=(D*v*rho)/meu//reynolds no
printf("\n reynolds no R_e=%f ",R_e);
printf("\n mass flow rate m_dot=%f kg/s",m_dot);
