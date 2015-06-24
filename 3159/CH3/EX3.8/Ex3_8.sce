// Determine structure and lattice parameter of material
clc
d = 114.6 // diameter of power camera in angstrom
lambda = 1.54 // wavelength in angstrom
s1 = 86
s2 = 100
s3 = 148
s4 = 180
s5 = 188
s6 = 232 
s7 = 272
printf("\n Example 3.8")
R = d/2      // Radius 
if R==57.3 then
    k = 1/4 // Bragg angle factor
end
a1 = (sin(s1*k*%pi/180))^2
a2 = (sin(s2*k*%pi/180))^2
a3 = (sin(s3*k*%pi/180))^2
a4 = (sin(s4*k*%pi/180))^2
a5 = (sin(s5*k*%pi/180))^2
a6 = (sin(s6*k*%pi/180))^2
a7 = (sin(s7*k*%pi/180))^2
c = 22 // constant to convert into integral number

printf("\n Within experimental error, values are as in integral ratio are as: \n %d:%d:%d:%d:%d:%d:%d",ceil(c*a1),ceil(c*a2),ceil(c*a3),ceil(c*a4),ceil(c*a5),ceil(c*a6),ceil(c*a7))
printf("\n So, this structure is FCC and material is copper with 3.62 angstrom lattice parameter")

