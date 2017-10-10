// Example 12.5
// Computation of (a) New bus voltage (b) Current supplied by each generator
//Page No. 500

clc;
clear;
close;

// Given data
p1=300000;               // Rated power in generator A
p2=400000;               // Rated power in generator B
v=250;                   // Rated voltage in machine
p3=350000;               // Rated power in generator C
Ibnew=2500;

// (a) New bus voltage

IArated=p1/v;               // Rated current in generator A
IBrated=p2/v;               // Rated current in generator B
IBorig=p3/v;                // Original bus current
IbDelta=Ibnew-IBorig;       // Current difference
DelVbus=IbDelta/(160+128);  // Voltage difference


// (b) Current supplied by each generator
DelIA=160*DelVbus;          // Generator A current difference
DelIB=128*DelVbus;          // Generator A current difference
Vbus=v-DelVbus;             // Voltage across the bus
IA=700+DelIA;               // Current in generator A
IB=700+DelIB;               // Current in generator B

Loading= (IA-IArated)*100/IArated;


// Display result on command window
printf("\n New bus voltage = %0.2f V ",DelVbus);
printf("\n Current supplied by generator A = %0.0f A ",IA);
printf("\n Current supplied by generator B = %0.0f A ",IB);
printf("\n Macine A is overloaded by %0.1f Percent ",Loading);
