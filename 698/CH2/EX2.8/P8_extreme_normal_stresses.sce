clc
//Example 2.8
//Extreme normal stresses
//------------------------------------------------------------------------------

//Given Data:
//Dimensions
d=0.075//m
L=0.25//m

//Loads
P=-55000//N (compression)
T=300//Nm

//Polar moment of inertia
J=(%pi/32)*(d^4)

//------------------------------------------------------------------------------
//Printing result file to .txt
res8=mopen(TMPDIR+'8_extreme_normal_stresses.txt','wt')
//Normal stress along Y direction Sy=0
//Normal stress along X direction
Sx=P/((%pi/4)*(d^2))
mfprintf(res8,"Sx=%0.2f MN/m^2 ",Sx*(10^-6))
nature(Sx)
//Shear stress
Txy=(T*(d/2))/J
mfprintf(res8,"\nTxy=%0.2f MN/m^2 shear",Txy*(10^-6))

mfprintf(res8,"\n\n\tSy=0\n\n")
//Maximum normal stress
Sn_max=(Sx/2)+sqrt(((Sx/2)^2)+(Txy^2))
mfprintf(res8,"The maximum normal stress is %0.2f MN/m^2 and its nature is",Sn_max*(10^-6))
nature(Sn_max)

//Minimum normal stress
Sn_min=(Sx/2)-sqrt(((Sx/2)^2)+(Txy^2))
mfprintf(res8,"\nThe minimum normal stress is %0.2f MN/m^2 and its nature is",Sn_min*(10^-6))
nature(Sn_min)
mclose(res8)
editor(TMPDIR+'8_extreme_normal_stresses.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------