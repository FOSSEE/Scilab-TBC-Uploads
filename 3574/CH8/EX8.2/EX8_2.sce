// Example 8.2
// Determine (a) The minimum value of excitation that will maintain 
// synchronism (b) Repeat (a) using eq.(8.16) (c) Repeat (a) using eq.(8.21)
// (d) Power angle if the field excitation voltage is increased to 175% of the
// stability limit determined in (c)
// Page No. 322

clc;
clear;
close;

// Given data
Pin=40;                     // Input power
Pin1phase=40/3;             // Single phase power
Xs=1.27;                    // Synchronous reactnace 
VT=220/sqrt(3);             // Voltage
delta=-90;                  // Power angle

f=60;                       // Operating frequency
P=4;                        // Number of poles
Pmech=100;                  // Mechanical power
eta=0.96;                   // Efficiency
FP=0.80;                    // Power factor leading
V=460;                      // Motor voltage
Xs_Mag=2.72;                // Synchronous reactnace magnitude
Xs_Ang=90;                  // Synchronous reactnace magnitude
deltaPull=-90;               // Pullout power angle

// (a) The minimum value of excitation that will maintain synchronism
Ef=98;                      // From the graph (Figure 8.13)

// (b) The minimum value of excitation using eq.(8.16)
Ef816=-Pin*Xs*746/(3*VT*sind(delta));


// (c) The minimum value of excitation using eq.(8.21)
Ef821=Xs*Pin1phase*746/(VT);

// (d) Power angle if the field excitation voltage is increased to 175%
delta2=Ef816*sind(delta)/(1.75*Ef816);
delta2=asind(delta2);

// Display result on command window
printf("\n The minimum value of excitation = %0.0f V ",Ef);
printf("\n The minimum value of excitation using eq.(8.16) = %0.0f V ",Ef816);
printf("\n The minimum value of excitation using eq.(8.21) = %0.0f V ",Ef821);
printf("\n Power angle = %0.0f deg ",delta2);
