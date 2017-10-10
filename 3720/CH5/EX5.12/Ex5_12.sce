//Example 5_12
clc;clear;funcprot(0);
// Given values
rho=1;//The density of water to be 1 kg/L = 1000 kg/m^3
v=50;// The water flow rate through the pump in L/s
n_m=.90;//The efficiency of electric motor
W_e=15;//Power in kW;
P_1=100;// The pressure at the inlet of the pump in kPa
P_2=300;// The pressure at the outlet of the pump in kPa
rho_1=1000;//The density of water in kg/m^3
c=4.18;// The specific heat in kJ/kg °C.

// Calculation 
// (a)
m=rho*v;//The mass flow rate of water through the pump in kg/s
W_p=n_m*W_e;//The mechanical (shaft) power delivers to the pump kW
dE_m=m*((P_2-P_1)/rho_1);//The increase in the mechanical energy of the fluid in kW
n_p=dE_m/W_p;// The mechanical efficiency of the pump
printf('(a)The mechanical efficiency of the pump,n_pump=%0.3f (or)%0.1f percentage \n',n_p,n_p*100);
//(b)
E_mloss=W_p-dE_m;// “lost” mechanical energy in kW
dT=E_mloss/(m*c);// °C
printf('(b)The temperature rise of water due to the mechanical inefficiency,dT=%0.3f degree Celsius\n',dT);
