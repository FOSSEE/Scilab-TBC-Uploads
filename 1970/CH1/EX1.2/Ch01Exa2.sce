// Scilab code Exa1.2 :  : Page 51 (2011)
clc; clear;
A = 14;        // Number of protons
Z = 7;        // Number of neutrons
N = A-Z;        // Number of electrons 
i = modulo((N+A),2);   // Remainder
// Check for even and odd number of particles !!!!! 
if  i == 0 then        // For even number of particles
    printf("\nParticles have integral spin");
    s = 1;    // Nuclear spin
end
 if i == 1 then        // For odd number of particles
    printf(" \nParticles have half integral spin ");
    s = 1/2;
end
if s == 1 then
    printf( "\nMeasured value agree with the assumption");
end
if s == 1/2 then
    printf( "\nMeasured value disagree with the assumption" );
end

// Result
// Particles have half integral spin 
// Measured value disagree with the assumption  
