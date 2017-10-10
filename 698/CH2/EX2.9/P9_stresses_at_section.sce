clc
//Example 2.9
//Stresses at a section
//------------------------------------------------------------------------------

//Given Data:
//Loads
//Load acting vertically downward
Py=-2000//N (compressive)
//Load acting horizontally
Px=1000//N

//Dimensions
//Diameter
d=0.05//m
//length of neck region
a=0.125//m
//distance between midpoint of section and line of action of vertical load
b=0.2//m
//distance between midpoint of section and line of horizontal load
c=0.25//m
//Moment of inertia
I=(%pi/64)*(d^4)
//Polar moment of inertia
J=(%pi/32)*(d^4)
//Area of cross section
A=(%pi/4)*(d^2)
//------------------------------------------------------------------------------

//Printing steps and result file to .txt
res9=mopen(TMPDIR+'9_stresses_at_section.txt','wt')
//Bending moment due to horizontal load about midpoint
Mx=Px*c
mfprintf(res9,"Bending moment due to horizontal load about midpoint Mx= %0.2f Nm\n",Mx)
//Bending moment due to vertical load about midpoint
My=Py*b
mfprintf(res9,"Bending moment due to vertical load about midpoint My= %0.2f Nm\n",My)
//Total bending moment
M=sqrt((Mx^2)+(My^2))
mfprintf(res9,"The total bending moment:\n\tM=sqrt((Mx^2)+(My^2))\n")
mfprintf(res9,"The total bending moment M = %0.2f Nm\n\n",M)
//Normal stress in X direction
Sx=Py/A-((M*(d/2))/I)
mfprintf(res9,"The normal stress is given by\n\tSx=Py/A-((M*(d/2))/I)\n")
mfprintf(res9,"Normal stress acting at the section is %0.2f MN/m^2\n\n",Sx*(10^-6))

//Couple moment due to horizontal load about midpoint
T=Px*b
//Shear stress
Txy=(T*(d/2))/J
mfprintf(res9,"The shear stress is given by\n\tTxy=(T*(d/2))/J\n")
mfprintf(res9,"Normal stress acting at the section is %0.2f MN/m^2\n\n",Txy*(10^-6))
//------------------------------------------------------------------------------

//Extreme streeses:
//Maximum normal stress
Sn_max=(Sx/2)+sqrt(((Sx/2)^2)+(Txy^2))
mfprintf(res9,"Maximum normal stress is %0.2f MN/m^2\n",Sn_max*(10^-6))
//Minimum normal stress
Sn_min=(Sx/2)-sqrt(((Sx/2)^2)+(Txy^2))
mfprintf(res9,"Minimum normal stress is %0.2f MN/m^2\n\n",Sn_min*(10^-6))
S=max((abs(Sn_max)),(abs(Sn_min)))
mfprintf(res9,"The maximum numerical normal stress is %0.2f MN/m^2",S*(10^-6))
//Maximum shear stress
T_max=sqrt(((Sx/2)^2)+(Txy^2))
mfprintf(res9,"\nThe maximum shear stress is %f MN/m^2",T_max*(10^-6))
mclose(res9)
editor(TMPDIR+'9_stresses_at_section.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------