
//To determine the quantity of current
//Page 450
clc;
clear;

//Parameters of the Copper Plating
TSA=0.3716; //Total Surface Area 
t=0.0254*(10^-3); //Thickness of the plating
density=8.883*(10^3); //Density of Copper

W=TSA*t*density*1000; //Weight of copper deposited in gms
ECEcu=0.329; //Electrochemical Equivalent of copper in gm per coulomb
C=W*1000/ECEcu; //Quantity of Current required.

F=96500; //One Farad Charge

Q=C/F; //Quantity of Current in Faradays

printf('The Quantity of Current Required is %g F',Q)
