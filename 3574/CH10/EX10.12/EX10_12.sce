// Example 10.12
// Determine (a) Rated torque (b) Armature current at locked rotor if no
// starting resistance is used (c) External resistance required in the armature
// circuit that would limit the current and develop 200 percent rated torque
// when starting (d) Assuming the system voltage drops to 215V, determine the 
// locked rotor torque using the external resistor in (c)
// Page No. 433

clc;
clear;
close;

// Given data
n=1750;                   // Rotor speed
P=15;                     // Hp rating of motor
VT=230;                   // Rated voltade of the machine
Ea=0;
Racir=0.280;              // Armature circuit loss
Rf=137;                   // Field resistance
ItRated=56.2;             // Total current drawn
VT1=215;                  // Rated voltage after drop

// (a) Rated torque
Trated=P*5252/n;

// (b) Armature current
Ia=(VT-Ea)/Racir; 

// (c) External resistance required
If=VT/Rf;                      // Field current
IaRated=ItRated-If;            // Rated armature current

Ia2=IaRated*2;                 // Armature current for 200% rated torque

Rx=((VT-Ea)/Ia2)-Racir;        // External resistance required

// (d) Locked rotor torque 
If215=VT1/Rf;                  // Field current at 215V
Ia215=(VT1-Ea)/(Racir+Rx);     // Armature current at 215V
TD2=Trated*( (If215*Ia215) / (If*IaRated) );

// Display result on command window

printf("\n Rated torque = %0.1f lb-ft ",Trated);
printf("\n Armature current = %0.1f A ",Ia);
printf("\n Armature current for 200 percent rated torque = %0.1f A ",Ia2);
printf("\n External resistance required = %0.2f Ohm ",Rx);
printf("\n Locked rotor torque = %0.1f lb-ft ",TD2);



