clc
//Example 2.15
//Stresses in steel latch
//------------------------------------------------------------------------------

//Given data:
//Loads
P=2700 // N

//Dimensions
b=0.006 // m
d=0.05 // m
c=d/2
A = b*d
I1=(b*(d^3))/12

R=0.025 // m
I2=(b*(R^3))/12

//distance of line of action from horizontal axis
l1=0.0375 // m
//distance of line of action from vertical axis
l2=R/2 // m

//
M1=P*l1
M2=P*l2


res15=mopen(TMPDIR+'15_stresses_in_steel_latch.txt','wt')

mfprintf(res15,'\tAT SECTION A-A\nTop fibres are critical.\n\n')

Sn_maxa=((M1*c)/I1)+(P/A)

Sn_mina=-((M1*c)/I1) + (P/A)

Tmaxa=Sn_maxa/2

mfprintf(res15,'\tSn(max) = ((M*c)/I) + (P/A)\n')
mfprintf(res15,'Maximum normal stress Sn(max)=%0.1f MN/m^2',Sn_maxa* (10^-6))
nature(Sn_maxa)
mfprintf(res15,' at top fibres of section A-A\n')
mfprintf(res15,'\n\tSn(min) = -((M*c)/I) + (P/A)\n')
mfprintf(res15,'Minimum normal stress Sn(min)=%0.1f MN/m^2',Sn_mina* (10^-6))
nature(Sn_mina)
mfprintf(res15,' at bottom fibres of section A-A\n')
mfprintf(res15,'\nMaximum shear stress T(max)=%0.1f MN/m^2',Tmaxa* (10^-6))
mfprintf(res15,' at top fibres of section A-A\n\n')


mfprintf(res15,'\tAT POINT B\n(neglecting stress concentration)\n\n')

Sx=((M1*c)/I1)+(P/A)
mfprintf(res15,'\tSx = ((M*c)/I) + (P/A)\n')
mfprintf(res15,'Sx=%0.1f MN/m^2',Sx* (10^-6))
nature(Sx)

Sy=((M2*l2)/I2)
mfprintf(res15,'\n\tSy = ((M*c)/I)\n')
mfprintf(res15,'Sy=%0.1f MN/m^2',Sy* (10^-6))
nature(Sy)

mfprintf(res15,'\n Sz=0 and Txy=0\n\n')

Sn_maxb=((Sx+Sy)/2) + sqrt((((Sx-Sy)/2)^2)-0)
mfprintf(res15,'\tSn(max) =((Sx+Sy)/2) + sqrt( ((Sx-Sy)/2)^2 - (Txy^2) )\n')
mfprintf(res15,'Maximum normal stress Sn(max)=%0.1f MN/m^2',Sn_maxb* (10^-6))
nature(Sn_maxb)

Sn_minb=((Sx+Sy)/2) - sqrt((((Sx-Sy)/2)^2)-0)
mfprintf(res15,'\n\tSn(min) =((Sx+Sy)/2) - sqrt( ((Sx-Sy)/2)^2 - (Txy^2) )\n')
mfprintf(res15,'Minimum normal stress Sn(min)=%0.1f MN/m^2',Sn_minb* (10^-6))
nature(Sn_minb)

Tmaxb=(Sn_maxb-0)/2
mfprintf(res15,'\n\tT(max)=(Sn(max)-0)/2')
mfprintf(res15,'\nMaximum shear stress T(max)=%0.1f MN/m^2\n\n',Tmaxb* (10^-6))
mclose(res15)
editor(TMPDIR+'15_stresses_in_steel_latch.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------