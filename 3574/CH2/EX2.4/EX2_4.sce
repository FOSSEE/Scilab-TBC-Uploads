// Example 2.4
// Computation of (a) Secondary voltage (b) Load current
// (c) Input current to the primary (d) Input impedance looking into the primary terminals
// Page No. 51

clc;
clear;
close;

NHS=200;               // Number of turns in primary
NLS=20;                // Number of turns in secondary
E=120;                 // Primary voltage magnitude
ES_Mag=12;             // Secondary voltage magnitude
ES_Ang=0;              // Secondary voltage angle
Zload_Mag=100;         // Load magnitude
Zload_Ang=30;          // Load angle 
f=60;                  // Frequency

// (a)  Secondary voltage
a=NHS/NLS;
ELS=E/a;      

// (b) Load current
IS_Mag=ES_Mag/Zload_Mag;         // Load current magnitude
IS_Ang=ES_Ang - Zload_Ang;       // Load current angle

//(c) Input current to the primary
Ip_Mag=IS_Mag/a;                 // Input current to the primary magnitude
Ip_Ang=IS_Ang;                   // Input current to the primary angle

//(d) Input impedance looking into the primary terminals
Zin_Mag=a^2*Zload_Mag;           // Input impedance magnitude 
Zin_Ang=Zload_Ang;               // Input impedance angle
Zin_Mag=Zin_Mag/1000;

// Display result on command window
printf("\n Turns ratio = %0.0f  ",a);
printf("\n Secondary voltage = %0.0f V", ELS);
printf("\n Load current magnitude = %0.2f A",IS_Mag);
printf("\n Load current angle = %0.0f deg",IS_Ang);
printf("\n Input current to the primary magnitude = %0.3f A",Ip_Mag);
printf("\n Input current to the primary angle = %0.0f deg",Ip_Ang);
printf("\n Input impedance magnitude = %0.0f KOhm", Zin_Mag);
printf("\n Input impedance angle = %0.0f deg", Zin_Ang);
