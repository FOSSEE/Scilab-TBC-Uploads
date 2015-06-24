clc;
clear;
//Example 3.4
mu=1.85*10^-5           //[kg/(m.s)]
P=101.325;               //Pressure in [kPa]
M_avg=29;                //Avg molecular wt of air
R=8.31451;               //Gas constant
T=300;                   //[K]
rho=P*M_avg/(R*T)   //[kg/m^3]
u_inf=2             //Viscosity in [m/s]
//At x=20 cm =0.2 m
x=0.2;                   //[m]
Nre_x=rho*u_inf*x/mu     //[Reynolds number]
del_by_x=4.64/sqrt(Nre_x)   //[Boundary layer]
del=del_by_x*x              //[m]
//del=del*1000                //[mm]

//At
x=0.4 ;         //[m]
Nre_x=(rho*u_inf*x)/mu      //<3*10^5
//Boundary layer is laminar
del_by_x=4.64/sqrt(Nre_x)   
del1=del_by_x*x              //[m]
//del1=del1*1000                //[mm]
d=del1-del                      //Del 
function m_dot=f(y),m_dot=u_inf*(1.5*(y/d)-0.5*(y/d)^3)*rho,endfunction
m_dot=intg(0,d,f)
printf("\nBoundary layer thickness at distance 20 cm from leading edge is %f m=%f mm\n",del,del*1000);
printf("\nBoundary layer thickness at distance 40 cm from leading edge is %f m=%f mm\n",del1,del1*1000);
printf("\nThus,Mass flow rate entering the boundary layer is %f kg/s",m_dot);


