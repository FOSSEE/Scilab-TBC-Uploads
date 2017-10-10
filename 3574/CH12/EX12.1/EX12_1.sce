// Example 12.1
// Determine (a) Field circuit resistance (b) Field rheostat setting that will 
// provide no load voltage of 140V (c) Armature voltage if the rheostat is set 
// to 14.23 ohm (d) Field rheostat setting that will cause critical resistance 
// (e) Armature voltage at 80 percent rated speed (f) Rheostat setting required 
// to obtain no load armature voltage of 140V if shunt field is separately 
// excited from a 120V DC source
// Page No. 479

clc;
clear;
close;

// Given data
Ea=156;               // No load voltage
If=4.7;               // Shunt field current
If140=2.35;           // New field current at Ea=140V
Eanew=140;            // No load voltage
Ifnew=3.2;            // Field current corresponding to no load voltage
Ea1=0;                // First arbitrary voltage
Ea2=100;              // Second arbitrary voltage
Vf=120;
V=130;                // Intersection of I1 and I2
Rrheonew=14.42;       // Rheostat set to new settings
Va=116;               // Intersection of field resistance line with the low 
                      // speed magnetization curve



//(a) Field circuit resistance
Rf=Ea/If;      // Field circuit resistance

// (b) Field rheostat setting that will provide no load voltage of 140V
Rrheo=(Eanew/Ifnew)-Rf;

//(c) Armature voltage if the rheostat is set to 14.23 ohm
Rnew=Rf+Rrheonew;      // New field resistance
If1=Ea1/(Rf+Rrheo);    // Field current corresponding to first arbitrary voltage
If2=Ea2/(Rf+Rrheo);    // Field current corresponding to second arbitrary voltage

// (d) Field rheostat setting that will cause critical resistance 
Rcr=Eanew/If140;         // Critical resistance

// (e) Armature voltage at 80 percent rated speed
// Ea80=0.80*Ea;
Ea80=116;

//(f) Rheostat setting required to obtain no load armature voltage of 140V if 
// shunt field is separately excited from a 120V DC source
Rrheo1=(Vf/Ifnew)-Rf;   

// Display result on command window
printf("\n Field circuit resistance = %0.2f Ohm",Rf);
printf("\n Field rheostat setting that will provide no load voltage of 140V = %0.2f Ohm ",Rrheo);
printf("\n Armature voltage if the rheostat is set to 14.23 ohm = %0.0f V ",V);
printf("\n Field rheostat setting that will cause critical resistance = %0.1f Ohm ",Rcr);
printf("\n Armature voltage at 80 percent rated speed (V)= %0.0f  ",Ea80);
printf("\n Rheostat setting required = %0.2f Ohm ",Rrheo1);

