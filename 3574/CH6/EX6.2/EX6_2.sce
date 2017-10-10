// Example 6.2
// Determine (a) Capacitance required in series with the auxillary winding 
// in order to obtain a 90 degree phase displacement between the current in 
// the main winding and the current in the auxillary winding at locked rotor  
// (b) Locked rotor torque in terms of the machine constant 
// Page No. 265

clc;
clear;
close;

// Given data
Zmw=2.00+%i*3.50                // Main winding impedance
Zaw=9.15+%i*8.40                // Auxillary winding impedance
VT=120;                         // Transformer voltage
Xaw=8.40;                       // Auxillary winding reactance
Raw=9.15;                       // Auxillary winding resistance
f=60;                           // Frequency
Tlr=107.1;                      // Original torque

// (a) Capacitance required in series with the auxillary winding 
// Main winding impedance in polar form
// Complex to Polar form...
Zmw_Mag=sqrt(real(Zmw)^2+imag(Zmw)^2);      // Magnitude part
Zmw_Ang=atan(imag(Zmw),real(Zmw))*180/%pi;  // Angle part 

// Auxillary winding impedance in polar form
// Complex to Polar form...
Zaw_Mag=sqrt(real(Zaw)^2+imag(Zaw)^2);      // Magnitude part
Zaw_Ang=atan(imag(Zaw),real(Zaw))*180/%pi;  // Angle part 

// Main winding current
Imw_Mag=VT/Zmw_Mag;                 // Main winding current magnitude
Imw_Ang=0-Zmw_Ang;                  // Main winding current angle

// Auxillary winding current
Iaw_Mag=VT/Zaw_Mag;                 // Auxillary winding current magnitude
Iaw_Ang=0-Zaw_Ang;                  // Auxillary winding current angle

Theta_awi=90-60.26;               // Required phase angle
Theta_awz=-Theta_awi;

Xc=Xaw-Raw*tand(Theta_awz);       // Capacitive reactance

C=1/2*%pi*f*Xc;                     // Required capacitance


// (b) Locked rotor torque in terms of the machine constant 
Zawnew=Raw+%i*Xaw-%i*Xc;            // Auxillary winding impedance
// Complex to Polar form...
Zawnew_Mag=sqrt(real(Zawnew)^2+imag(Zawnew)^2);      // Magnitude part
Zawnew_Ang=atan(imag(Zawnew),real(Zawnew))*180/%pi;  // Angle part 

Iawnew_Mag=VT/Zawnew_Mag;           // Auxillary winding current magnitude
Iawnew_Ang=0-Zawnew_Ang;            // Auxillary winding current magnitude

Tlenew=Imw_Mag*Iawnew_Mag*sind(90);

// Percent change increase in locked rotor torque 
PI=(Tlenew-Tlr)/Tlr*100;


// Display result on command window
printf("\n Required capacitance = %0.1f microF ",C);
printf("\n Percent increase in locked rotor torque = %0.0f Percent",PI);

//Note: Capacitor computation is wrong in the book
