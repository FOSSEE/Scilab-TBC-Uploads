clc
//Example 2.13
//Shear Stress in Z-bracket
//------------------------------------------------------------------------------

//Given dta:
//Load
P=45000 // N

//Dimensions
//Cross Section
d= 0.05 // m
b = 0.125 // m
A=b*d
I=(b*(d^3))/12
c = d/2

//Total Height of bracket
h= 0.3// m
//Distance of section A-A from bottom
a = 0.2 // m
//Distance of mid point of section A-A from line of action of P
l1 = 0.175 // m
//Distance of section B-B from line of action of P
l2 = 0.225 // m


//Bending Moment
M1=P*l1 // Bending moment at section A-A
M2=P*l2 // Bending moment at section B-B

//------------------------------------------------------------------------------
//Printing the result file to .txt
res13=mopen(TMPDIR+'13_shear_stress_in_Z_bracket.txt','wt')

mfprintf(res13,'At section A-A, Sy=0 and Txy=0\n')

Sx1=(P/A) + ((M1*c)/I)
mfprintf(res13,'\n\tSx=(P/A) + ((M1*c)/I)')

Tmax1 = Sx1/2
mfprintf(res13,'\n\tTmax = Sx/2')

mfprintf(res13,'\n\nNormal stress Sx = %0.1f MPa\n',Sx1* (10^-6))
mfprintf(res13,'Shear stress Tmax = %0.1f MPa\n',Tmax1* (10^-6))


mfprintf(res13,'\nAt section B-B, Sy=0 and Txy=0\n')

Sx2=((M2*c)/I)
mfprintf(res13,'\n\tSx=((M1*c)/I)')

Tmax2 = Sx2/2

mfprintf(res13,'\n\nNormal stress Sx = %0.1f MPa\n',Sx2* (10^-6))
mfprintf(res13,'Shear stress Tmax = %0.1f MPa\n',Tmax2* (10^-6))

mclose(res13)
editor(TMPDIR+'13_shear_stress_in_Z_bracket.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------