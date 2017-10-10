clear
clc
//Example 14.8 VISCOUS EFFECTS ON PUMP EFFICIENCY
D1=0.45; //diameter[m]
D=1.8; //[m]
eta1=0.85;
//Efficiency 
eta=1-(1-eta1)/(D/D1)^(1/5) 
printf("\nThe efficiency of an impeller of diameter 1.80 m = %.2f.\n",eta)