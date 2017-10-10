clc
//Example 2.14
//Stress in Eccentric Loading
//------------------------------------------------------------------------------

//Given dta:
//Load
P=500000 // N

//Dimensions
//Eccentricity
e=0.05 // m

//Cross section
b=0.3 // m
d=0.2 // m
A = b*d
I=(b*(d^3))/12
c = d/2

//Bending moment
M=P*e

//------------------------------------------------------------------------------
//Printing the result file to .txt
res14=mopen(TMPDIR+'14_stress_in_eccentric_loading.txt','wt')

mfprintf(res14,'The member is subjected to direct stress and \nalso bending stresses due to eccentricity of the load')

mfprintf(res14,'\n Total stress \n\tS=Sd + Sb --- This will be compressive, since Sd is compressive, and Sb is acting in the direction of Sd')
mfprintf(res14,'\n\tS=Sd - Sb --- This will be compressive, since Sb is opposing Sd')

Sd=(P/A)

Sb=(M*c)/I

S1=-(Sd+Sb) // This will be compressive

S2=-(Sd-Sb) // This will be tensile

mfprintf(res14,'\n\nStresses induced are %0.3f MPa',S1* (10^-6))
nature(S1)
mfprintf(res14,' and %0.3f MPa',S2* (10^-6))
nature(S2)
mfprintf(res14,'\nMaximum Tensile Stress is %0.3f MPa',S2* (10^-6))

mclose(res14)
editor(TMPDIR+'14_stress_in_eccentric_loading.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------