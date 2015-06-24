clc;
//Example  9.3
//page no 88
printf("Example 9.3 page no 88\n\n");
//water flow in a pipe
rho=62.4//density of water 
D=0.167//diameter of pipe
g=32.174//gravitational constant
M_dot_out=0//momentum out in x dir
F_x=5//foce in the x dir
printf("density  rho=%f lb/ft^3\n diameter D=%f ft\n momentum M_dot_out=%f lbf\n forc in x dir F_x=%f lbf",rho,D,M_dot_out,F_x);
M_dot_in=M_dot_out+F_x//momentum in 
printf("\n momentum M_dot_in=%f lbf",M_dot_in);
S=(%pi*D^2)/4//surface area 
printf("\n surface area S=%f ft^2",S);
v=sqrt((M_dot_in*g)/(rho*S))
printf("\n velocity =%f ft/s",v);
q=S*v//volumatric flow rate 
m_dot=rho*q//mass flow rate
printf("\n volumatric flow rate q=%f ft^3/s\n mass flow rate m_dot=%f lb/s",q,m_dot);
