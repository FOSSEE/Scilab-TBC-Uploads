// Example 8.3
// Determine (a) System active power (b) Power factor of the synchronous motor
// (c) System power factor (d) Percent change in synchronous field current 
// required to adjust the system power factor to unity (e) Power angle of the 
// synchronous motor for the conditions in (d) 
// Page No. 324

clc; 
clear;
close;

// Given data

Php=400;                    // Power in hp
eta=0.958;                  // Efficiency
Pheater=50000;              // Resistance heater power 
Vs=300;                     // Synchronous motor voltage
eta2=0.96;                  // Synchronous motor efficiency
Xs=0.667;                   // Synchronous reactnace
VT=460;                     // 3-Phase supply voltage
delta=-16.4;                // Power angle

// (a) System active power 
Pindmot=Php*0.75*746/(eta);   // Motor operating at three quarter rated load
Psynmot=Vs*0.5*746/(eta2);    // Synchronous motor power  
Psys=Pindmot+Pheater+Psynmot;
Psysk=Psys/1000;

// (b) Power factor of the synchronous motor
Pin=Psynmot;                 // Power input
Vtph=VT/sqrt(3);             // Voltage per phase
Ef=-(Pin*Xs)/(3*Vtph*sind(delta));
// Complex to Polar form...

Ef_Mag=Ef;          // Magnitude part 
Ef_Ang=delta;       // Angle part 
Vtph_Mag=Vtph;      
Vtph_Ang=0;
////////////
N01=Ef_Mag+%i*Ef_Ang;      // Ef in polar form 
N02=Vtph_Mag+%i*Vtph_Ang;  // Vt in polar for

N01_R=Ef_Mag*cos(-Ef_Ang*%pi/180); // Real part of complex number Ef
N01_I=Ef_Mag*sin(Ef_Ang*%pi/180); //Imaginary part of complex number Ef

N02_R=Vtph_Mag*cos(-Vtph_Ang*%pi/180); // Real part of complex number Vt
N02_I=Vtph_Mag*sin(Vtph_Ang*%pi/180); //Imaginary part of complex number Vt

FinalNo_R=N01_R-N02_R;
FinalNo_I=N01_I-N02_I;
FinNum=FinalNo_R+%i*FinalNo_I;
// Complex to Polar form...

FN_M=sqrt(real(FinNum)^2+imag(FinNum)^2); // Magnitude part
FN_A = atan(imag(FinNum),real(FinNum))*180/%pi;// Angle part 

Ia_Mag=FN_M/Xs;          // Magnitude of Ia
Ia_Ang=FN_A-(-90);       // Angle of Ia
Theta=0-Ia_Ang;
FP=cosd(Theta);          // Power factor


// (c) System power factor
ThetaIndMot=acosd(0.891);    // Induction motor power factor
Thetaheat=acosd(1);          // Heater power factor
ThetaSyncMot=-34.06;         // Synchronous motor power factor
Qindmot=tand(27)*Pindmot; 
Qsynmot=tand(ThetaSyncMot)*Psynmot;
Qsys=Qindmot+Qsynmot;
Ssys=Psys+%i*Qsys;         // System variable in complex form

// Complex to Polar form...

Ssys_Mag=sqrt(real(Ssys)^2+imag(Ssys)^2);         // Magnitude part
Ssys_Ang = atan(imag(Ssys),real(Ssys))*180/%pi;   // Angle part 

FPsys=cosd(Ssys_Ang);                             // System power factor 

// (d) Percent change in synchronous field current required to adjust the 
// system power factor to unity

Ssynmot=Psynmot-(%i*(-Qsynmot+Qsys));   // Synchronous motor system

// Complex to Polar form...

Ssynmot_Mag=sqrt(real(Ssynmot)^2+imag(Ssynmot)^2);     // Magnitude part
Ssynmot_Ang=atan(imag(Ssynmot),real(Ssynmot))*180/%pi; // Angle part 

Ssynmot1ph_Mag=Ssynmot_Mag/3;            // For single phase magnitude
Ssynmot1ph_Ang=Ssynmot_Ang;              // For single phase angle

Iastar_Mag=Ssynmot1ph_Mag/Vtph;          // Current magnitude
Iastar_Ang=Ssynmot1ph_Ang-0;             // Current angle

IaNew_Mag=Iastar_Mag;
IaNew_Ang=-Iastar_Ang;

IaXs_Mag=IaNew_Mag*Xs;
IaXs_Ang=IaNew_Ang-90;

// Convert these number into complex and then perform addition
// Polar to Complex form

// Y=29.416<-62.3043 //Polar form number
IaXs_R=IaXs_Mag*cos(-IaXs_Ang*%pi/180);  // Real part of complex number
IaXs_I=IaXs_Mag*sin(IaXs_Ang*%pi/180);   // Imaginary part of complex number
Efnew=Vtph+IaXs_R+%i*IaXs_I;
// Complex to Polar form...

Efnew_Mag=sqrt(real(Efnew)^2+imag(Efnew)^2);     // Magnitude part
Efnew_Ang=atan(imag(Efnew),real(Efnew))*180/%pi; // Angle part 

DeltaEf=(Efnew_Mag-Ef)/Ef; 

// (e) Power angle of the synchronous motor
deltasynmot=Efnew_Ang;

// Display result on command window
printf("\n System active power  = %0.1f kW ",Psysk);
printf("\n Power factor of the synchronous motor = %0.3f leading ",FP);
printf("\n System power factor = %0.3f lagging ",FPsys);
printf("\n Percent change in synchronous field current = %0.2f Percent ",DeltaEf*100);
printf("\n Power angle of the synchronous motor = %0.2f deg ",deltasynmot);
