// Example 8.1
// Determine (a) Developed torque (b) Armature current (c) Excitation voltage
// (d) Power angle (e) Maximum torque 
// Page No. 317

clc;
clear;
close;

// Given data
f=60;                       // Operating frequency
P=4;                        // Number of poles
Pmech=100;                  // Mechanical power
eta=0.96;                   // Efficiency
FP=0.80;                    // Power factor leading
V=460;                      // Motor voltage
Xs_Mag=2.72;                // Synchronous reactnace magnitude
Xs_Ang=90;                  // Synchronous reactnace magnitude
deltaPull=-90;               // Pullout power angle
// (a) Developed torque
ns=120*f/P;                 // Synchronous speed
Td=5252*Pmech/(ns*eta); 


// (b) Armature current
S=Pmech*746/(eta*FP);
Theta=-acosd(FP);          // Power factor angle (negative as FP is leading)
V1phi=V/sqrt(3);           // Single line voltage
S1phi_Mag=S/3;             // Magnitude 
S1phi_Ang=Theta;           // Angle
VT_Mag=V1phi;
VT_Ang=0;
Ia_Mag=S1phi_Mag/VT_Mag;   // Armature current magnitude
Ia_Ang=S1phi_Ang-VT_Ang;   // Armature current angle
Ia_Ang=-Ia_Ang;            // Complex conjugate of Ia

// (c) Excitation voltage
Var1_Mag=Ia_Mag*Xs_Mag;
Var1_Ang=Ia_Ang+Xs_Ang;

/////////
N01=VT_Mag+%i*VT_Ang;
N02=Var1_Mag+%i*Var1_Ang;
// Polar to Complex form

N01_R=VT_Mag*cos(-VT_Ang*%pi/180); // Real part of complex number 1
N01_I=VT_Mag*sin(VT_Ang*%pi/180); //Imaginary part of complex number 1

N02_R=Var1_Mag*cos(-Var1_Ang*%pi/180); // Real part of complex number 2
N02_I=Var1_Mag*sin(Var1_Ang*%pi/180); //Imaginary part of complex number 2

FinalNo_R=N01_R-N02_R;
FinalNo_I=N01_I-N02_I;
FinNum=FinalNo_R+%i*FinalNo_I;
// Complex to Polar form...

FN_M=sqrt(real(FinNum)^2+imag(FinNum)^2); // Magnitude part
FN_A = atan(imag(FinNum),real(FinNum))*180/%pi;// Angle part 
//////
Ef_Mag=FN_M;
Ef_Ang=FN_A;
// (d) Power angle
delta=Ef_Ang;

// (e) Maximum torque 
Pin=3*(-VT_Mag*Ef_Mag/Xs_Mag)*sind(deltaPull);   // Active power input
Tpull=5252*Pin/(746*ns);



// Display result on command window
printf("\n Developed torque = %0.0f lb-ft ",Td);
printf("\n Armature current magnitude= %0.2f A ",Ia_Mag);
printf("\n Armature current angle= %0.2f deg ",Ia_Ang);
printf("\n Excitation voltage magnitude = %0.0f V ",Ef_Mag);
printf("\n Excitation voltage angle = %0.1f deg ",Ef_Ang);
printf("\n Power angle = %0.1f deg ",delta);
printf("\n Maximum torque = %0.0f lb-ft ",Tpull);


