//Example number 6.9, Page number 6.49

clc;clear;close

// variable declaration
r1=1.258            // Atomic radius of BCC
r2=1.292            // Atomic radius of FCC

// calculations
a1=(4*r1)/sqrt(3)       // in BCC
b1=((a1)^3)*10^-30         // Unit cell volume
v1=(b1)/2                    // Volume occupied by one atom
a2=2*sqrt(2)*r2         // in FCC
b2=(a2)^3*10^-30           // Unit cell volume
v2=(b2)/4                    // Volume occupied by one atom  
v_c=((v1)-(v2))*100/(v1)     // Volume Change in % 
d_c=((v1)-(v2))*100/(v2)     // Density Change in %

// Results
printf("a1=%.3f Angstrom" ,(a1))
printf("\nUnit cell volume = a1^3 = %.3e m^3",b1)
printf("\nVolume occupied by one atom = %.2e m^3",v1)
printf("\na2 = %.3f Angstrom",a2)
printf("\nUnit cell volume =a2^3 = %.3e m^3",b2)
printf("\nVolume occupied by one atom = %.2e m^3",v2)
printf("\nVolume Change in %% = %.3f",v_c)
printf("\nDensity Change in %% = %.2f",d_c)
printf("\nThus the increase of density or the decrease of volume is about 0.5%%")
