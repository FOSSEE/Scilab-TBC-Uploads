// Calculating the armature voltage drop
clc;
disp('Example 9.12, Page No. = 9.49')
// Given Data
P = 300;// Power rating (in kW)
V = 500;// Voltage rating (in volts)
a = 6;// Number of parallel paths (Since lap winding)
p = 0.021;// resistivity (in ohm mm square)
Ns = 150;// Number of slots
Lmt = 2.5;// Length of mean turn (in meter)
az = 25;// Area of each conductror (in mm square)
// Calculation of the armature voltage drop
Z = Ns*8;// Number of armature conductors.  Since 8 conductors per slot
ra = Z*p*Lmt/(2*a*a*az);// Resistance of armature (in ohm)
Ia = P*10^(3)/V;// Armature current
disp(Ia*ra,'Armature voltage drop (Volts) =');
//in book answer is 21 (Volt).  The answers vary due to round off error
