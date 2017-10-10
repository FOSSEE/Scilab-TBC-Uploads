// Example 5.2
// Determine (a) Slip (b) Line current (c) Apparent power, active power, 
// reactive power and power factor of the motor (d) Equivalent rotor curret
// (e) Stator copper loss (f) Rotor copper loss (g) Core loss (h) Air-gap
// power (i) Mechanical power developed (j) Developed torque (k) Shaft 
// horsepower (l) Shaft torque (m) Effiency 
// Page No. 180

clc;
clear;
close;

// Given data
f=60;                   // Frequency
P=6;                    // Number of poles
nr=1185;
R1=0.200;               // Motor resistance
R2=0.250;
X1=1.20;                // Motor reactance
X2=1.29;
Rfe=317;                // Field resistance
XM=42;                  // Motor reactance
V=460;                  // Voltage rating
PFPS=166;               // Stray loss

// (a) Slip 
ns=(120*f)/P;
s=(ns-nr)/ns;            // Speed difference

// (b) Line current
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

// (c) Apparent power, active power, reactive power and power factor of the motor
S_Mag=3*(V/sqrt(3))*I1_Mag;          // S magnitude
S_Ang=0-(-Zin_Ang);                  // S angle

// Polar to Complex form
S_R=S_Mag*cos(-S_Ang*%pi/180);       // Real part of complex number
S_I=S_Mag*sin(S_Ang*%pi/180);        // Imaginary part of complex number

FP=cosd(S_Ang);                      // Power factor

// (d) Equivalent rotor curret
E2_Mag=I1_Mag*ZP_Mag;                // E2 magnitude
E2_Ang=I1_Ang+ZP_Ang;                // E2 angle

I2_Mag=E2_Mag/Z2_Mag;                // I2 magnitude
I2_Ang=E2_Ang-Z2_Ang;                // I2 angle

// (e) Stator copper loss 
Pscl=3*I1_Mag^2*R1;

// (f) Rotor copper loss
Prel=3*I2_Mag^2*R2;

// (g) Core loss 
Pcore=3*(E2_Mag^2/Rfe);

// (h) Air-gap power
Pgap=Prel/s;

// (i) Mechanical power developed
Pmech=Prel*(1-s)/s;

// (j) Developed torque 
TD=(21.12*I2_Mag^2*R2)/(s*ns);

// (k) Shaft horsepower
LOSS=Pscl+Prel+Pcore+PFPS;
Pshaft=(S_R-LOSS)/746;

// (l) Shaft torque
T=5252*Pshaft/nr;

// (m) Effiency 
eta=Pshaft/S_R*746;

// Display result on command window
printf("\n Slip = %0.4f ",s);
printf("\n Line current magnitude = %0.4f A",I1_Mag);
printf("\n Line current angle = %0.4f deg",I1_Ang);
printf("\n Apparent power = %0.0f W",S_R);
printf("\n Active power = %0.0f var",S_I);
printf("\n Reactive power = %0.0f VA",S_Mag);
printf("\n Power factor of the motor = %0.3f ",FP);
printf("\n Equivalent rotor curret magnitude = %0.4f A",I2_Mag);
printf("\n Equivalent rotor curret angle = %0.4f deg",I2_Ang);
printf("\n Stator copper loss = %0.0f W",Pscl);
printf("\n Rotor copper loss = %0.0f W",Prel);
printf("\n Core loss = %0.0f W",Pcore);
printf("\n Air-gap power = %0.0f W",Pgap);
printf("\n Mechanical power developed = %0.0f W",Pmech);
printf("\n Developed torque = %0.2f lb-ft",TD);
printf("\n Shaft horsepower = %0.2f hp",Pshaft);
printf("\n Shaft torque = %0.1f lb-ft",T);
printf("\n Effiency = %0.3f",eta);
