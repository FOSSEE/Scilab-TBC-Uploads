
//To determine the weights of Nickel and Silver Deposited
//Page 456
clc;
clear;

F=96500; //One Farad of Charge
//Equivalent Weights of the Following metals
EWAg= 108; //silver
EWNi= 58.6/2; //Nickel

I=20; //Current Passed
T=1*60*60; //Time for which the current is passed
TC=T*I; //Total Charge produced

//One Equivalent of Metal requires 1 F of charge

Q=TC/F; // Total Charge in Farad

//Amount of metal deposited
WAg=Q*EWAg; //Silver
WNi=Q*EWNi; //Nickel

printf('The Weight of Nickel And Silver deposited by 20A for an hour is %g gm and %g gm respectively.\n',WNi,WAg)
