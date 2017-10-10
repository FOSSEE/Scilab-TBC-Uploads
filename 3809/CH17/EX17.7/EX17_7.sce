//Chapter 17, Example 17.7
clc
//Initialisation
gm=72*10**-3                           //in siemens
Rd=3.3*10**3                       //resistance in ohm



//Calculation
b=-gm*Rd                         //gain of the circuit


//Results
printf(" Gain = %.1f\n",round(b))

