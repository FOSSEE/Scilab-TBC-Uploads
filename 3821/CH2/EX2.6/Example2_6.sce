////Example 1.6 Page No:24
///Find Stress in square metal bar
//Input data
clc;
clear;
A1=50*50*10^-6;                 //Area ofsquare metal bar in mm**2
Pc=600*10^3;                   //Axial compress laod in KN
L1=200*10^-3;                   //Gauge length of metal bar in mm
deltaLc=0.4*10^-3;             //Contraction length of metal bar in mm
deltaLlateral=0.05*10^-3;      //Lateral length of metal bar in mm

//Calculation
sigmac=Pc/A1;              //Stress in square metal bar 
ec=deltaLc/L1;             //Longitudinal or linear strain in square metal bar
E1 =sigmac/ec;             //Smodule of elasticity
elateral=deltaLlateral/L1; //Lateral strain in square metal bar
poissonsratio=elateral/ec;


//Output
printf('stress in bar=%f N/m^2 \n',sigmac);
printf('longitudinal or linear strain in square metal bar= %f \n',ec);
printf('module of elasticity= %f N/m^2 \n',E1);
printf('lateral strain in square metal bar=%f \n',elateral);
printf('poissons ratio=%f \n',poissonsratio);
