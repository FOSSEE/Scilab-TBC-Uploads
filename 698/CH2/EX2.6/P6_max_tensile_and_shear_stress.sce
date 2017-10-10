clc
//Example 2.6
//Maximum tensile and shear stress
//------------------------------------------------------------------------------

//Given Data:
//Dimensions
d=0.05//m
//Area
A=(%pi/4)*(d^2)
//Load
P=9000//N
//Torsional Moment
T=100//Nm
//Eccentricity[distance by which line of action of load is offset from axis of shaft]
e=0.028//m

//------------------------------------------------------------------------------
//Moment of area
I=(%pi/64)*(d^4)
//Polar moment
J=(%pi/32)*(d^4)

//Bending moment
Mc=P*e*(d/2)

//The critical stress is at the section at which beam is fixed
Sx=(P/A)+(Mc/I)
//Shaft is not loaded along X-direction
Sy=0

//Shear stress
Txy=(T*(d/2))/J
//Maximum tensile stress
Sn_max=(Sx/2)+sqrt(((Sx/2)^2)+(Txy^2))
//Maximum shear stress
T_max=sqrt(((Sx/2)^2)+(Txy^2))

//------------------------------------------------------------------------------
//Printing result file to .txt
res6=mopen(TMPDIR+'6_max_tensile_and_shear_stress.txt','wt')
mfprintf(res6,"The critical stress is at the section at which beam is fixed\n")
mfprintf(res6,"\tSy=0\n")
mfprintf(res6,"\n\tSx=(P/A)+(Mc/I).....Tensile stress\n")
mfprintf(res6,"\n\tTxy=(T*(d/2))/J.....Shear stress\n\n")
mfprintf(res6,"The maximum tensile stress is %0.1f MN/m^2",(Sn_max*(10^-6)))
nature(Sn_max)
mfprintf(res6,"\nThe maximum shear stress is %0.1f MN/m^2 (shear)",(T_max*(10^-6)))
mclose(res6)
editor(TMPDIR+'6_max_tensile_and_shear_stress.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
