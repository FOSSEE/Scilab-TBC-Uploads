///Chapter No 7 Fluid Mechanics
///Example 7.20 Page No:130-131
/// Find Continuity eqation 
//Input data
clc;
clear;
D11=0.25;                    //Diameter at inlet in m
D12=0.175;                   //Diameter at outlet in m
P1=450*10^3;               //Intensity of pressure at inlet in kPa
P2=200*10^3;               //Intensity of pressure at outlet in kPa
pi1=3.14;                    //pi constant 
rho=1000;                   //Rho constant
g1=9.81;                     //Gravity constant
//Z1=Z2;

///Calculation 
///A1*V11=A2*V12               Continuity eqation in V1
V12=((pi1/4)*(D11^2))/((pi1/4)*(D12^2));
///Z=V12^2-V11^2             Bernoulli's equation in m/s
Z=-(((P2/(rho*g1))-(P1/(rho*g1)))*(2*g1));
X=Z/((V12^2)-1);
V11=sqrt(X);
Q1=(pi1/4)*(D11^2)*V11;         //Flow rate Water in m**3/Kg


///Output
printf('Continuity eqation=%f V1 \n ",V12);
printf('Bernoullis equation=%f m/s \n  ",Z);
printf('V1= %f \n',V11);
printf('Flow rate Water= %f m^3/kg \n  ',Q1);
