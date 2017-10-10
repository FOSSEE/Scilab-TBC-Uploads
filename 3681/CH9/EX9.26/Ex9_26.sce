// Calculating the number of turns on each commutating pole
clc;
disp('Example 9.26, Page No. = 9.85')
// Given Data
p = 6;// Number of poles
Bgi = 0.5;// Flux density (in Wb per meter square)
Ia = 500;// Armature full load current (in ampere)
Z = 540;// Number of conductors
Kgi = 1;// Inerpole interaction factor
lgi = 4;// Effective length of air gap
// Calculation of the number of turns on each commutating pole
a = p;// Number of parallel paths.  Since armature is lap wound
ATa = Ia/a*Z/(2*p);// Armature mmf per pole
mmf_airgap = 800000*Bgi*Kgi*lgi*10^(-3);// Mmf required for air gap (in A)
mmf_iron = 0.1*mmf_airgap;// Mmf required for iron parts (in A).  Since mmf required is one-tenth that for air gap
ATi = ATa+mmf_airgap+mmf_iron;// Total mmf per pole on each interpole (in A)
Ti = ATi/Ia;// Number of turns on each interpole
disp(Ti,'Number of turns on each interpole =');
//in book answer is 11.  The answers vary due to round off error
