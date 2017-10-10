// Example 5.17
// Determine the active power that the motor, driven as an induction generator
// delivers to the system.
// Page No. 223

clc;
clear;
close;

// Given data
ns=1200;                // Speed
nr=1215;
R1=0.200;               // Motor resistance
R2=0.250;
X1=1.20;                // Motor reactance
X2=1.29;
Rfe=317;                // Field resistance
XM=42;                  // Motor reactance
V=460;                  // Voltage rating

// Active power of the motor computation
s=(ns-nr)/ns;            // Speed difference
Z2=(R2/s)+%i*X2;

// Complex to Polar form...
Z2_Mag=sqrt(real(Z2)^2+imag(Z2)^2);       // Magnitude part
Z2_Ang = atan(imag(Z2),real(Z2))*180/%pi; // Angle part 

Z0_Num_Mag=Rfe*XM;   // Z0 numerator
Z0_Num_Ang=0+90;  
   
Z0_Den_R=Rfe;       // Z0 denominator
Z0_Den_I=XM;
Z0_Den=Z0_Den_R+%i*Z0_Den_I;
// Complex to Polar form...
Z0_Den_Mag=sqrt(real(Z0_Den)^2+imag(Z0_Den)^2);       // Magnitude part
Z0_Den_Ang = atan(imag(Z0_Den),real(Z0_Den))*180/%pi; // Angle part 

Z0_Mag=Z0_Num_Mag/Z0_Den_Mag;            // Magnitude of Z0
Z0_Ang=Z0_Num_Ang-Z0_Den_Ang;            // Angle of Z0

// Polar to Complex form
Z0_R=Z0_Mag*cos(-Z0_Ang*%pi/180);       // Real part of complex number
Z0_I=Z0_Mag*sin(Z0_Ang*%pi/180);        // Imaginary part of complex number

// ZP computation
ZP_Num_Mag=Z2_Mag*Z0_Mag;              // ZP numerator magnitude
ZP_Num_Ang=Z2_Ang+Z0_Ang;              // ZP numerator angle

ZP_Den_R=real(Z2)+Z0_R;                // Real part of ZP denominator
ZP_Den_I=imag(Z2)+Z0_I; 
ZP_Den=ZP_Den_R+%i*ZP_Den_I;           // ZP in complex form

// Complex to Polar form...
ZP_Den_Mag=sqrt(real(ZP_Den)^2+imag(ZP_Den)^2);       // Magnitude part
ZP_Den_Ang = atan(imag(ZP_Den),real(ZP_Den))*180/%pi; // Angle part 

ZP_Mag=ZP_Num_Mag/ZP_Den_Mag;           // Final vlaue of ZP in polar form
ZP_Ang=ZP_Num_Ang-ZP_Den_Ang;
// Polar to Complex form
ZP_R=ZP_Mag*cos(-ZP_Ang*%pi/180);      // Real part of complex number
ZP_I=ZP_Mag*sin(ZP_Ang*%pi/180);       // Imaginary part of complex number

// Zin computation
ZP=ZP_R+%i*ZP_I;                       // Parallel impedance
Z1=R1+%i*X1;
Zin=Z1+ZP;                             // Input impedance
// Complex to Polar form...
Zin_Mag=sqrt(real(Zin)^2+imag(Zin)^2);       // Magnitude part
Zin_Ang = atan(imag(Zin),real(Zin))*180/%pi; // Angle part 

// I1 computation
I1_Mag=(V/sqrt(3))/Zin_Mag;           // I1 magnitude
I1_Ang=0-Zin_Ang;                     // I1 angle

// S computation
S_Mag=3*(V/sqrt(3))*I1_Mag;          // S magnitude
S_Ang=0-(-Zin_Ang);                  // S angle

// Polar to Complex form
S_R=S_Mag*cos(-S_Ang*%pi/180);       // Real part of complex number
S_I=S_Mag*sin(S_Ang*%pi/180);        // Imaginary part of complex number

// Display result on command window
printf("\n Active power of the motor = %0.0f W",S_R);
