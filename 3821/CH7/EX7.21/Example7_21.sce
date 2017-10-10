///Chapter No 7 Fluid Mechanics
///Example 7.21 Page No:131-132
///Find Bernoulli's equation
///Input data
clc;
clear;
L1=300;                  //Length of pipe in m
D11=0.9;                 //Diameter at higher end in m
D12=0.6;                 //Diameter at lower end in m
S=0.85;                 //Specific gravity 
Q1=0.08;                 //Flow in l/s
P1=40*10^3;            //Pressure at higher end in kPa
pi1=3.14;                //pi constant 
rho=1000;               //Rho constant
g1=9.81;                 //Gravity constant
slop=1/50;              //1 in 50


//Calculation
//Datum line is passing through the center of the low end,therefore
Z2=0; 
Z1=slop*L1;
//Q=A1*V1=A2*V2        Continuity eqation
V11=Q1/((pi1/4)*(D11^2)); //Frome continuity eqation, discharge
V12=Q1/((pi1/4)*(D12^2));     //Frome continuity eqation, discharge
///Bernoulli's equation 
P2=(((((P1/(rho*S*g1))+(V11^2/(2*g1))+Z1)-(V12^2/(2*g1))+Z2))*(S*rho*g1))*10^-3;


///Output
printf('Z1= %f m \n ',Z1);
printf('continuity eqation discharge V11= %f m^3 \n ',V11);
printf('continuity eqation, discharge V12= %f m^3 \n',V12);
printf('bernoullis equation= %f Kpa \n ',P2);
