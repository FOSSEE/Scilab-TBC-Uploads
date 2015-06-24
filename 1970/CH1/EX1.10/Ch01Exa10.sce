// Scilab code Ex1.10 :  : Page 55 (2011)
clc; clear;
M_Li = 7.0116004;   // Mass of lithium nucleus, u
M_Be = 7.016929;    // Mass of beryllium nucleus, u
m_e = 0.511;        // Mass of an electron, MeV
if (M_Li-M_Be)*931.48 < 2*m_e then
    printf("\nThe Li-7 is not a beta emitter");
else
    printf("\nThe Li-7 is a beta emitter");    
end
if (M_Be-M_Li)*931.48 > 2*m_e then
    printf("\nThe Be-7 is a beta emitter");
else
    printf("\nThe Be-7 is not a beta emitter");    
end

// Result
// The Li-7 is not a beta emitter
// The Be-7 is a beta emitter 
