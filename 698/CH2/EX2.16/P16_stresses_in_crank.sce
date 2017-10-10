clc
//Example 2.15
//Stresses in crank
//------------------------------------------------------------------------------

//Given dta:
//Loads
P=10000 // N

//Dimensions
//distance of section A-A from plane of action of load P
l1=0.025 + 0.025 + 0.04 // m
//distance of centre of section A-A from line of action of P
l2=0.125 // m
//Cross section A-A
d=0.075 // m
c=d/2
r=d/2
I=(%pi/64)*(d^4)
J=2*I

//Bending moment
M=P*l1
//Torque
T=P*l2

res16=mopen(TMPDIR+'16_stresses_in_crank.txt','wt')
mfprintf(res16,'The critical points are at front and back fibres of the section.\n')

Sx=(M*c)/I
Sy=0
mfprintf(res16,'\n\tSx= (M*c) /I\n')
mfprintf(res16,'Sx=%0.1f MN/m^2\n',Sx*(10^-6))

Txy=(T*r)/J
mfprintf(res16,'\n\tTxy=(T*r)/J\n')
mfprintf(res16,'Txy=%0.1f MN/m^2\n\n',Txy*(10^-6))

Sn_max=((Sx+Sy)/2) + sqrt( (((Sx-Sy)/2)^2) + (Txy^2) )
mfprintf(res16,'Maximum normal stress=%0.1f MN/m^2\n\n',Sn_max*(10^-6))

Tmax=sqrt( (((Sx-Sy)/2)^2) + (Txy^2) )
mfprintf(res16,'Maximum normal stress=%0.1f MN/m^2\n\n',Tmax*(10^-6))

mclose(res16)
editor(TMPDIR+'16_stresses_in_crank.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------