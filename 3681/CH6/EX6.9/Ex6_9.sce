// Calculating the specific electric loading
clc;
disp('Example 6.9, Page No. = 6.13')
// Given Data
Pc = 1000;// Core loss (in W)
R = 0.025;// Armature resistance (in ohm)
l = 230;// Specific loss dissipation (in W per degree celsius per meter square)
a = 2;// Since a=z for lap winding
Z = 270;// Number of conductors
L = 0.25;// Core length (in meter)
D = 0.25;// Armature diameter (in meter)
T = 40;// Temperature rise (degree celsius)
// Calculation of the specific electric loading
c = 1/l;// Cooling co-efficient
S = %pi*D*L;// Dissipation surface (in meter square)
Q = S*T/c;// Maximum allowable pwer dissipation from armature surface
Ia = ((Q-Pc)/R)^(1/2);// Armature current (in Ampere)
Iz = Ia/a;// Current in each conductor (in A)
ac = Iz*Z/(%pi*D);// Specific electric loading
disp(ac,'Specific electric loading (ampere conductors per meter)=');
//in book answer is 31000 (ampere conductors per meter).  The answers vary due to round off error
