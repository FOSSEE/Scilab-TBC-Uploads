// Example 5.11
// Determine (a) Rotor frequency (b) Slip at which TDmax occurs (c) Rotor speed
// at 1/2 rated torque load (d) Required rheostat resistance (e) Rated torque
// Page No. 201

clc;
clear;
close;

// Given data
S=0.0159;                // Slip
Fbr=50;                  // Rated frequency
R1=0.00536;              // Motor resistance
R2=0.00613;
X1=0.0383;               // Motor reactance
X2=0.0383;
Rrhe=0;                  // Initial rheostat resistance
P=4;                     // Number of poles
NR=1000;                 // Rated speed
s1=0.0159;               // Slip of rheostat
a=2;                     // Stator to rotor turns ratio
hp=400;                  // Motor horsepower

// (a) Rotor frequency
fr=S*Fbr;

// (b) Slip at which TDmax occurs
Stdmax=(R2+Rrhe)/(sqrt(R1^2+(X1+X2)^2));

// (c) Rotor speed at 1/2 rated torque load 
s=S*(0.5)*(R2/R2);  // Rotor speed at 1/2 rated torque
ns=120*Fbr/P;        
nr=ns*(1-s);         // Rotor speed

// (d) Required rheostat resistance
s2=(ns-NR)/ns;
Rrhe2=((s2/s1)*(1/0.5)*(R2+Rrhe))-R2;  // rheostat resistance
Rrheostat=Rrhe2/a^2;

// (e) Rated torque
nr1=ns*(1-s1);       // Rated speed
T=hp*5252/nr1;



// Display result on command window
printf("\n Rotor frequency = %0.3f Hz",fr);
printf("\n Slip at which TDmax occurs = %0.4f ",Stdmax);
printf("\n Rotor speed at 1/2 rated torque = %0.0f r/min",nr);
printf("\n Required rheostat resistance = %0.4f Ohm/phase",Rrheostat);
printf("\n Rated torque = %0.0f lb-ft",T);
