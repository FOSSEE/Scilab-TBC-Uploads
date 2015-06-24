//To determine the number of steps of buck and boost the regulators will achieve
//Page 480
clc;
clear;

//From Problems 4 and 5 the co-effcients are obtained
VRRpu=1.035;
Vreg4=1.0337;
Vreg5=1.0666;
VRP4=1.0337;
VRP5=1.0138;
Vmin=1.010; //For s= 1.75

//Steps
Buck4=(VRRpu-VRP4)/(0.00625);
Buck5=(VRRpu-VRP5)/(0.00625);
Boost4=(Vreg4-Vmin)/(0.00625);
Boost5=(Vreg5-Vmin)/(0.00625);

printf('\na) The Number of steps of buck and number is steps of boost in example 9-4 is %g and %g respectively\n',Buck4,Boost4)
printf('\nb) The Number of steps of buck and number is steps of boost in example 9-5 is %g and %g respectively\n',Buck5,Boost5)
