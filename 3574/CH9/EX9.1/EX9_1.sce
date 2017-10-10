// Example 9.1
// Determine (a) Turbine torque supplied to the alternator (b) Excitation 
// voltage (c) Active and reactive components of apparent power (d) Power 
// factor (e) Neglecting saturation effects, excitation voltage if the field 
// current is reduced to 85% of its voltage in (a) (f) Turbine speed.
// Page No. 342

clc; 
clear;
close;

// Given data
hp=112000;                  // Power input
n=746*3600;                 // Speed
VT=460;                     // 3-Phase supply voltage
Pout=112000;                // Power
Xs=1.26;                    // Synchronous reactnace
delta=25;                   // Power angle
eta=0.85;                   // Percent reduction factor
P=2;                        // Number of poles
f=60;                       // Frequnecy

// (a) Turbine torque supplied to the alternator
T=(hp*5252)/n;

// (b) Excitation voltage
Vt=VT/sqrt(3);                 // Voltage/phase
Ef=(Pout*Xs)/(3*Vt*sind(delta));

// (c) Active and reactive components of apparent power
// Vt=Ef-Ia*j*Xs
// Solving for Vt-Ef
Vt_Mag=Vt;
Vt_Ang=0;
Ef_Mag=Ef;
Ef_Ang=delta;
// 
N01=Ef_Mag+%i*Ef_Ang;      // Ef in polar form 
N02=Vt_Mag+%i*Vt_Ang;      // Vt in polar for

N01_R=Ef_Mag*cos(-Ef_Ang*%pi/180); // Real part of complex number Ef
N01_I=Ef_Mag*sin(Ef_Ang*%pi/180); //Imaginary part of complex number Ef

N02_R=Vt_Mag*cos(-Vt_Ang*%pi/180); // Real part of complex number Vt
N02_I=Vt_Mag*sin(Vt_Ang*%pi/180); //Imaginary part of complex number Vt

FinalNo_R=N01_R-N02_R;
FinalNo_I=N01_I-N02_I;
FinNum=FinalNo_R+%i*FinalNo_I;

// Now FinNum/Xs in polar form
FinNum_Mag=sqrt(real(FinNum)^2+imag(FinNum)^2);         // Magnitude part
FinNum_Ang = atan(imag(FinNum),real(FinNum))*180/%pi;   // Angle part 
Ia_Mag=FinNum_Mag/Xs;
Ia_Ang=FinNum_Ang-90;

// Computation of S=3*Vt*Ia*
S_Mag=3*Vt_Mag*Ia_Mag;
S_Ang=Vt_Ang+-Ia_Ang;

// Polar to complex form
S_R=S_Mag*cos(-S_Ang*%pi/180);  // Real part of complex number S
S_I=S_Mag*sin(S_Ang*%pi/180);   // Imaginary part of complex number S

// (d) Power factor
Fp=cosd(Ia_Ang);

// (e) Excitation voltage
Efnew=eta*Ef_Mag;

// (f) Turbine speed
ns=120*f/P;

// Display result on command window
printf("\n Turbine torque supplied to the alternator  = %0.1f lb-ft ",T);
printf("\n Excitation voltage = %0.1f V/phase ",Ef);
printf("\n Active components of apparent power= %0.0f kW ",S_R/1000);
printf("\n Reactive components of apparent power= %0.1f kvar lagging ",S_I/1000);
printf("\n Power factor = %0.2f lagging ",Fp);
printf("\n Excitation voltage new = %0.1f V/phase ",Efnew);
printf("\n Turbine speed = %0.0f r/min ",ns);
