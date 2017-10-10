//Example 8_1
clc;clear;funcprot(0);
// Given values
P_i=745;
P_o=97;//The pressure at the pipe inlet and outlet in kPa
D=0.05;// m
L=40;// m
//Properties
rho=888;//kg/m^3
mu=0.800;// kg/m.s
g=9.81;// m/s^2

//Calculation
gradP=P_i-P_o;//kPa
A_c=(%pi*D^2)/4;// m^2
//(a)
//For the horizontal case, theta=0
theta=0;// degree
V=((((gradP*1000)-(rho*g*L*sind(theta)))*(%pi*D^4))/(128*mu*L));// m^3/s
V_horiz=V;// m^3/s
printf('(a)The flow rate for the horizontal case,theta=0,V_horiz=%0.5f m^3/s\n',V_horiz);

//(b)
// For uphill flow with an inclination of 15°, we have theta=+15°,
theta_1=+15;// degree
V=((((gradP*1000)-(rho*g*L*sind(theta_1)))*(%pi*D^4))/(128*mu*L));
V_uphill=V;//m^3/s
printf('(b)The flow rate for uphill flow with an inclination of 15°,V_uphill=%0.5f m^3/s\n',V_uphill);

//(c)
//For downhill flow with an inclination of 15°,we have theta=-15°,
theta_2=-15;//degree
V=((((gradP*1000)-(rho*g*L*sind(theta_2)))*(%pi*D^4))/(128*mu*L));
V_downhill=V;//m^3/s
printf('(c)The flow rate for downhill flow with an inclination of 15°,V_downhill=%0.5f m^3/s\n',V_downhill);
V_avg=(V_downhill/A_c);
Re=(rho*V_avg*D)/mu;
disp("Re=100.Re<2300.Therefore, the flow is laminar for all three cases and the analysis is valid.");
