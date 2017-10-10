//Example 13_7
clc;clear;
// Given values
b=10;// Width in m
y_1=0.8;// The flow depth in m
V_1=7;// Velocity before the jump in m/s
g=9.81;// m/s^2
rho=1000;// kg/m^3

// Calculation
//(a)
Fr_1=V_1/(sqrt(g*y_1));
y_2=0.5*y_1*(-1+sqrt(1+(8*Fr_1^2)));// The flow depth after the jump in m
printf('(a)The flow depth after the jump,y_2=%0.2f m\n',y_2);
V_2=(y_1/y_2)*V_1;//The flow depth after the jump in m/s
y_2=2.46;// m
Fr_2=V_2/(sqrt(g*2.46));
printf('    The Froude number after the jump,Fr_2=%0.3f \n',Fr_2);
//(b)
H_l=(y_1-2.46)+((V_1^2-V_2^2)/(2*g));// m
printf('(b)The head loss,H_l=%0.3f m\n',H_l);
E_s1=y_1+(V_1^2/(2*g));//The specific energy of water before the jump in m
Dr=H_l/E_s1;
printf('   The dissipation ratio,Dr=%0.3f \n',Dr);
//(c)
V=b*y_1*V_1;// m/s
m=rho*V;// The mass flow rate of water in kg/s
E_d=(m*g*H_l)/1000;//kW
printf('(c)The wasted power production potential due to the hydraulic jump,E_d=%0.0f kW\n',E_d);
// The answers vary due to round off error
