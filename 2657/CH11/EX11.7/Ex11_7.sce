//Change in air fuel ratio at altitude
clc,clear
//Given:
ha=5000 //Altitude in m
A_F=14 //Air fuel ratio at sea level
P1=1.013 //Pressure of air in bar at sea level
T1=27+273 //Temperature of air in K at sea level
R=0.287 //Specific gas constant in kJ/kgK
function t=f1(h),t=ts-0.0065*h,endfunction //Temperature(t in degreeC) as a function of altitude(h in m) 
function h=f2(P),h=19200*log10(1.013/P),endfunction //Altitude(h in m) as a function of pressure(P in bar)
//Solution:
ts=T1-273 //Sea level temperature in degreeC
T2=f1(ha) //Temperature at altitude(ha = 5000 m) in degreeC
T2=T2+273 //in K
//Defining, y as a function of P
//This function is the difference of function(f2) and ha given
function y=f(P),y=f2(P)-ha,endfunction
//The function f is solve for zero to get the value of P2
P2=fsolve(1,f) //Pressure at altitude(ha = 5000 m) in bar
rho_a=P2/(R*T2) //Density of air at altitude in kg/m^3
rho_s=P1/(R*T1) //Density of air at sea level in kg/m^3
A_F_a=A_F*sqrt(rho_a/rho_s) //Air fuel ratio at altitude
//Results:
printf("\n The air fuel ratio supplied at 5000 m altitude by a carburettor = %.2f\n\n",A_F_a)
