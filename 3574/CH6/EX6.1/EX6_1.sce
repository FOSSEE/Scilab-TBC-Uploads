// Example 6.1
// Determine (a) Locked rotor current in each winding (b) Phase displacement
// angle between the two currents (c) Locked rotor torque in terms of the
// machine constant (d) External resistance required in series with the auxillary
// winding in order to obtain a 30 degree phase displacement between the currents
// in the two windings (e) Locked rotor torque for the conditions in (d) 
// (f) Percent increase in locked rotor torque due to the addition of external
// resistance  
// Page No. 257

clc;
clear;
close;

// Given data
Zmw=2.00+%i*3.50                // Main winding impedance
Zaw=9.15+%i*8.40                // Auxillary winding impedance
VT=120;                         // Transformer voltage
Xaw=8.40;                       // Auxillary winding reactance
Raw=9.15;                       // Auxillary winding resistance

// (a) Locked rotor current in each winding
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

// (b) Phase displacement angle between the two currents
Alpha=abs(Imw_Ang-Iaw_Ang);

// (c) Locked rotor torque in terms of the machine constant 
Tlr=Imw_Mag*Iaw_Mag*sind(Alpha);

// (d) External resistance required in seris with the auxillary winding in 
// order to obtain a 30 degree phase displacement between the currents in the
// two windings 
Theta_awi=Imw_Ang+30;      // Required phase angle
Theta_awz=-Theta_awi;
Rx=(Xaw/tand(Theta_awz))-Raw;

// (e) Locked rotor torque for the conditions in (d)
Zawnew=Raw+Rx+%i*Xaw;            // Auxillary winding impedance
// Complex to Polar form...
Zmwnew_Mag=sqrt(real(Zawnew)^2+imag(Zawnew)^2);      // Magnitude part
Zmwnew_Ang=atan(imag(Zawnew),real(Zawnew))*180/%pi;  // Angle part 

Iawnew_Mag=VT/Zmwnew_Mag;         // Auxillary winding current magnitude
Iawnew_Ang=0-Zmwnew_Ang;         // Auxillary winding current magnitude
Tlenew=Imw_Mag*Iawnew_Mag*sind(30);

// (f) Percent increase in locked rotor torque due to the addition of external
// resistance
PI=(Tlenew-Tlr)/Tlr*100;


// Display result on command window
printf("\n Main winding current magnitude = %0.1f A ",Imw_Mag);
printf("\n Main winding current angle = %0.1f deg ",Imw_Ang);
printf("\n Auxillary winding current magnitude = %0.2f A ",Iaw_Mag);
printf("\n Auxillary winding current angle = %0.1f deg ",Iaw_Ang);
printf("\n Phase displacement angle = %0.1f deg ",Alpha);
printf("\n Locked rotor torque in terms of the machine constant = %0.2f.Ksp ",Tlr);
printf("\n External resistance required = %0.2f Ohm ",Rx);
printf("\n Locked rotor torque = %0.1f.Ksp ",Tlenew);
printf("\n Percent increase in locked rotor torque = %0.1f Percent increase ",PI);

