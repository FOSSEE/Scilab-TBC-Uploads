// Example 4.3
// Determine (a) Synchronous speed (b) Slip (c) Rotor impedance (d) Rotor current
// (e) Rotor current if changing the shaft load resulted in 1.24 percenr slip 
// (f) Speed for the condition in (e) 
// Page No. 146

clc;
clear;
close;

// Given data
fs=60;                  // Frequency
p=6;                    // Number of poles
nr=1164;                // Rotor speed
Rr=0.10;                // Equivalent resistance
Xbr=0.54;               // Equivalent reactance
Ebr=150;                // Blocked rotor voltage per phase
s1=0.0124;              // Percent slip

// (a) Synchronous speed
ns=120*fs/p;               // Speed 

// (b) Slip
s=(ns-nr)/ns; 

// (c) Rotor impedance  
Zr=(Rr/s)+%i*Xbr;
// Complex to Polar form...
Zr_Mag=sqrt(real(Zr)^2+imag(Zr)^2);         // Magnitude part
Zr_Ang=atan(imag(Zr),real(Zr))*180/%pi;     // Angle part 

// (d) Rotor current
Ir_Mag=Ebr/Zr_Mag;                          // Magnitude
Ir_Ang=0-Zr_Ang;                            // Angle

// (e) Rotor current if changing the shaft load resulted in 1.24 percent slip 
Zrnew=Rr/s1+%i*Xbr;
// Complex to Polar form...
Zrnew_Mag=sqrt(real(Zrnew)^2+imag(Zrnew)^2);         // Magnitude part
Zrnew_Ang=atan(imag(Zrnew),real(Zrnew))*180/%pi;     // Angle part 

Irnew_Mag=Ebr/Zrnew_Mag;                             // Magnitude
Irnew_Ang=0-Zrnew_Ang;                               // Angle

// (f) Speed for the condition in (e) 
nr=ns*(1-s1); 

// Display result on command window
printf("\n Synchronous speed = %0.0f r/min ",ns);
printf("\n Slip = %0.3f ",s);
printf("\n Rotor impedance magnitude = %0.2f Ohm ",Zr_Mag);
printf("\n Rotor impedance angle = %0.2f deg ",Zr_Ang);
printf("\n Rotor current magnitude = %0.1f Ohm ",Ir_Mag);
printf("\n Rotor current angle = %0.1f deg ",Ir_Ang);
printf("\n Rotor current magnitude by changing the shaft load = %0.1f Ohm ",Irnew_Mag);
printf("\n Rotor current angle by changing the shaft load = %0.2f deg ",Irnew_Ang);
printf("\n New rotor speed = %0.0f r/min ",nr);
