//Inverter Circuits//
//Example 7.2//
C=1*10^-6;//Capacitance of series inverter circuit in Farads//
f=5*10^3;//operating Frequency of series Inverter in Hertz//
L=1/(C*(f^2));//value of Inductance under Resonance condition in Henry//
printf('value of Inductance at resonance=L=%fHenry',L);