//Example 5_14
clc;clear;funcprot(0);
// Given values
rho=1.20;//The density of air in kg/m^3
alpha_2=1.10;
dt=1;// s
D=0.05;// Diameter in m
n_f=0.3;// Efficiency of fan motor

// Calculation
//(a)
V=0.5*(12*40*40);//The air volume in the computer case in cm^3
V=V/10^6;// cm^3 to m^3
v=V/dt;//The volume  flow rate of air through the case in m^3/s
m=rho*V;//The mass flow rate of air through the case in kg/s
A=(%pi*D^2)/4;// m^2
V_1=v/A;//m/s
W_fan=m*alpha_2*(V_1^2/2);
W_e=W_fan/n_f;//Electric power input to the fan in W
printf('(a)Electric power input to the fan,W_elect=%0.3f W\n',W_e);
//(b)
dP=(rho*W_fan)/m;//dp=P_4-P_3
printf('(b)The pressure rise across the fan is %0.1f Pa.\n',dP);
//The answer is bit different due to round off error in the book
