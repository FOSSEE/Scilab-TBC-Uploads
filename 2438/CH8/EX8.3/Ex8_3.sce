//===============================================================================================================================================
// Chapter 8 example 3

clc;
clear;

// Variable declaration
Nc  = 3.8*10^17;            //constant in cm^-3
Nv  = 6.5*10^18;           //constant in cm^-3
Eg  = 1.42;                // band gap energy in eV
KT1 = 0.03885;            // kt value at 450K
T1  = 300;                //temperature in K
T2  = 450;                //temperature in K

// calculation
n1i  = sqrt(Nc*Nv*exp(-Eg/0.0259));             // intrinsic carrier concentration in cm^-3
n2i  = sqrt(Nc*Nv*((T2/T1)^3) *exp(-Eg/KT1));     // intrinsic carrier conc at 450K in cm^-3

// Result
mprintf('Intrinsic Carrier Concentration at 300K = %3.2e cm^-3\n Intrinsic Carrier Concentration at 300K = %3.2e cm^-3',n1i,n2i)
mprintf('\n Note : Calculation mistake in textbook in finding carrier conc. at 450K')


//================================================================================================================================================
