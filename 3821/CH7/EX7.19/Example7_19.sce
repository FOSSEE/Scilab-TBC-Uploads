///Chapter No 7 Fluid Mechanics
///Example 7.19 Page No:130
///Find pipe inclined 30 degree,therefore Z2
///Input data
clc;
clear;
L1=36;                    //Length of pipe in m
D11=0.15;                 //Diameter at upper side in m
D12=0.3;                  //Diameter at lower side in m
sin30=0.5;
theta=sin(30);      //Pipe slope upward at angle in degree
V11=2;                    //Velocity of water at smaller section in m/s  
pi1=3.14;                 //Pi constant 
rho=1000;                //Roh constant
g1=9.81;                  //Gravity constant


///Calculation
//datum line is passing through the center of the low end,therefore
Z1=0;
Z2=Z1+L1*(0.5);           //pipe inclined 30 degree,therefore in m
//Q=A1*V1=A2*V2  continuity eqation ,discharge
V12=(pi1/4*(D11^2)*2)/(pi1/4*(D12^2));
//Z=P1-P2 bernoulli's equation 
Z=((((-V11^2)/(2*g1))+((V12^2)/(2*g1))-Z1+Z2)*(rho*g1))*10^-3;


///Output
printf('pipe inclined 30 degree,therefore Z2= %f m \n',Z2);
printf('continuity eqation discharge V2= %f m/s \n',V12);
printf('bernoullis equation Z=%f kpa \n',Z);
