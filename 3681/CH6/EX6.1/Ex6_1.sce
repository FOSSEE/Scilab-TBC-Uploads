// Calculating the specific electric and specific magnetic loading
clc;
disp('Example 6.1, Page No. = 6.10')
// Given Data
P = 350;// Power rating (in kW)
E = 500;// Voltage (in V)
rpm = 450;
p = 6;// Number of poles
a = 6;// Since a=p for lap winding
Z = 660;// Number of conductors
L = 0.32;// Core length (in meter)
D = 0.87;// Armature diameter (in meter)
// Calculation of the specific electric loading
Ia = P*1000/E;// Armature current (in A)
Iz = Ia/a;// Current in each conductor (in A)
ac = Iz*Z/(%pi*D);// Specific electric loading
disp(ac,'Specific electric loading (ampere conductors per meter)=');
// Calculation of the specific magnetic loading
F = E*a/(Z*rpm/60*p);// Flux per pole (in Wb)
Bac = p*F/(%pi*D*L);// specific magnetic loading
disp(Bac,'Specific magnetic loading (Wb per meter square)=');
//in book answers are 28200 (ampere conductors per meter) and 0.693 (Wb per meter square) respectively.  The answers vary due to round off error
