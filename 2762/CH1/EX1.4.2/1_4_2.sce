//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.4-2
//Introduction to engineering principles and units
//given data
//Pressure and composition calculation
//A:carbon dioxide, B: carbon monoxide, C: Nitrogen gas, D: Oxygen gas
pA=75;
pB=50;
pC=595; 
pD=26;
//above are the patial pressures of the given gases respectively in mm Hg
P=pA+pB+pC+pD; //total pressure of the mixture
mprintf("the total pressure in mm Hg is %d", P);//
xA=pA/P;
xB=pB/P;
xC=pC/P;
xD=pD/P;
//above are the patial pressures of the given gases respectively
mprintf(" the mole fractions of the carbon dioxide %f",xA);
mprintf(" the mole fractions of the carbon monoxide %f",xB);
mprintf(" the mole fractions of the nitrogen %f",xC);
mprintf(" the mole fractions of the oxygen %f",xD);
