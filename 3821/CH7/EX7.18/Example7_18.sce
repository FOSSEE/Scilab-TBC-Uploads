///Chapter No 7 Fluid Mechanics
///Example 18 Page No:129
//// Find rate of water flow l/min
//Input data
clc;
clear;
L1=200;               //length of pipe in m
D11=1;                //Diameter at high end in m
D12=0.4;              //Diameter at low end in m
P1=50*10^3;         //Pressure at high end  in kPa
Q1=4000;              //Rate of water flow l/min
S=1;                 //Slope of pipe 1 in 100
Z2=0;                //Datum line is passing through the center of the low end,therefore
pi1=3.14;
rho=1000;
g1=9.81;


///Calculation
Q1=(4000*10^-3)/60;   //rate of water flow l/min in m**3/s
Z1=1/100*L1;           //slope of pipe 1 in 100 is in m
//Q=A1*V11=A2V2        //continuity eqation ,discharge
V11=Q1/((pi1/4)*(D11^2));//in m^3
V12=Q1/((pi1/4)*(D12**2));//in m^3
//bernoulli's equation 
P2=(((((P1/(rho*g1))+(V11^2/(2*g1))+Z1)-(V12^2/(2*g1))-Z2))*(rho*g1))*10^-3; 


///Output
printf('rate of water flow=%f m^3/s \n ',Q1);
printf('slope of pipe=%f m \n',Z1);
printf('continuity eqation ,discharge= %f m^3 \n ",V11);
printf('continuity eqation ,discharge= %f m^3 \n ",V12);
printf('bernoullis equation for discharge= %f kpa \n ',P2);
