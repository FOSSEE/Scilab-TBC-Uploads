// Example 9.9
// Determine (a) Excitation voltage (b) Power angle (c) No load voltage, 
// assuming the field current is not changed (d) Voltage regulation (e) No load
// voltage if the field current is reduced to 80% of its value at rated load. 
// Page 369

clc;
clear;
close;

// Given data
V=4800;                     // Voltage of synchronous generator
PF=0.900;                   // Lagging power factor
S_Mag=1000000/3;
Xa_Mag=13.80;               // Synchronous reactance
Xa_Ang=90;
Vt_Ang=0;  

// (a) Excitation voltage 
Vt=V/sqrt(3);              
Theta=acosd(PF);                // Angle
Ia_Magstar=S_Mag/Vt;            // Magnitude of curent
Ia_Angstar=Theta-0;             // Angle of current
Ia_Mag=Ia_Magstar;
Ia_Ang=-Ia_Angstar;

// Ef=Vt+Ia*j*Xa
// First compute Ia*Xa
IaXa_Mag=Ia_Mag*Xa_Mag;
IaXa_Ang=Ia_Ang+Xa_Ang;
// Polar to Complex form for IaXa
IaXa_R=IaXa_Mag*cos(-IaXa_Ang*%pi/180); // Real part of complex number
IaXa_I=IaXa_Mag*sin(IaXa_Ang*%pi/180);  // Imaginary part of complex number
// Vt term in polar form
Vt_Mag=Vt;
Vt_Ang=Vt_Ang;
// Polar to Complex form for Vt
Vt_R=Vt_Mag*cos(-Vt_Ang*%pi/180);      // Real part of complex number
Vt_I=Vt_Mag*sin(Vt_Ang*%pi/180);       // Imaginary part of complex number
// Ef in complex form
Ef_R=IaXa_R+Vt_R;
Ef_I=IaXa_I+Vt_I;
Ef=Ef_R+%i*Ef_I;
// Complex to Polar form for Ef
Ef_Mag=sqrt(real(Ef)^2+imag(Ef)^2);        // Magnitude part
Ef_Ang= atan(imag(Ef),real(Ef))*180/%pi;   // Angle part 

// (b) Power angle
PA=Ef_Ang;

// (c) No load voltage, assuming the field current is not changed 
// From figure 9.23 (b)
VolAxis=Vt_Mag/30;        // The scale at the given voltage axis
Ef_loc=Ef_Mag/VolAxis;    // Location of Ef voltage
Vnl=33.4*VolAxis;         // No load voltage

// (d) Voltage regulation
VR=(Vnl-Vt)/Vt*100;

// (e) No load voltage if the field current is reduced to 80% 
Vnlnew=31*VolAxis;

// Display result on command window
printf("\n Excitation voltage = %0.0f V ",Ef_Mag);
printf("\n Power angle = %0.1f deg ",PA);
printf("\n No load voltage = %0.0f V ",Vnl);
printf("\n Voltage regulation = %0.0f Percent ",VR);
printf("\n No load voltage when field current is reduced to 80 percent = %0.0f V ",Vnlnew);
