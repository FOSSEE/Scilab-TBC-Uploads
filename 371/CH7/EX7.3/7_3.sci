//Inverter Circuits//
//Example 7.3//
L=5*10^-3;//Inductance of series inverter circuit in Henry//
C=1*10^-6;//Capacitance of series inverter circuit in Farads//
Rl=400;//Load Resistance in Ohms//
R2=10^4;//value of the second resistance in Ohms//
DF=0.7;//Damping Factor value of LC filter//
R1=(2*(DF)*(sqrt(L/C)))-R2-(1/(Rl*C));//value of the first resistance in Ohms//
printf('value of resistance=R1=%fOhms',R1);
