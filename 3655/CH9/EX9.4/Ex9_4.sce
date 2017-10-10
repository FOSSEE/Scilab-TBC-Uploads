// Example 9.4
// Computation for various gains & i/p &o/p impedances//
// Page no.387

clc;
clear;
close;

//Given data
hfe=50;
hoe=25*10^-6;
RL=1*10^3;
hie=1100;
hre=2.5*10^-4;
Rs=1000;


//..................................(A).....................................//

//Calculation for current gain//
AI=-hfe/(1+hoe*RL);

//Calculation for input resistance//
Ri=hie+(hre*AI*RL);

//Calculation for voltage gain//
Av=(AI*RL)/Ri;

//Calculation for overall voltage gain//
Avs=(Av*Ri)/(Ri+Rs);

//Calculation for overall current gain//
AIs=(AI*Rs)/(Ri+Rs);

//Calculation for output admittance//
Yo=hoe-((hfe*hre)/(hie+Rs));

//Calculation for output impedance//
Zo=1/Yo;

//Calculation for the power gain//
Ap=Av*AI;

//Displaying the result in command window

printf('\n Current gain = AI = %0.1f ',AI);
printf('\n \n Input resistance = Ri = %0.0f ohm',Ri);
printf('\n \n Voltage gain = Av = %0.1f ',Av);
printf('\n \n Overall voltage gain = Avs = %0.1f ',Avs);
printf('\n \n Overall current gain = AIs = %0.1f ',AIs);
printf('\n \n Output admittance = Yo = %0.1f x 10^-6 mho',Yo*10^6);
printf('\n \n Output impedance = Zo = %0.1f K',Zo*10^-3);
printf('\n \n The power gain = Ap =Av*AI = %0.0f ',Ap);

//Answers are varying due to round off error//
