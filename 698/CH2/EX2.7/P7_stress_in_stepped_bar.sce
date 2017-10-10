clc
//Example 2.7
//Stresses in stepped bar
//------------------------------------------------------------------------------

//Given Data:
//Load
F=50000//N

//Dimensions
d1=0.05//m
L1=5//m
d2=0.025//m
L2=L1
A1=(%pi/4)*(d1^2)
A2=(%pi/4)*(d2^2)

//Modulus of rigidity
E=200e9
//------------------------------------------------------------------------------

//Total extension of the bar will be the sum of individual extensions
//Extension of larger part
x1=(F*L1)/(A1*E)
//Extension of the smaller part
x2=(F*L2)/(A2*E)

//Total extension of the bar
x=x1+x2

//Stress in part of larger diameter
S1=F/A1
//Stress in part of smaller diameter
S2=F/A2

//------------------------------------------------------------------------------
//Printing result file to .txt
res7=mopen(TMPDIR+'7_stress_in_stepped_bar.txt','wt')
mfprintf(res7,"The force produces deflection in both the portions of steel.\nTotal deflection will be sum of inividual deflections.\n")
mfprintf(res7,"The deflection is given by:\n\t\tx=(F*L)/(A*E)\n")
mfprintf(res7,"\t\tx=x1+x2\n\n")
mfprintf(res7,"The total deflection is %0.3f mm\n",x*(10^3))
mfprintf(res7,"\n\tStress=Force/Area\n\n")
mfprintf(res7,"The tensile stress at larger cross section area is %0.2f MPa\n",S1*(10^-6))
mfprintf(res7,"The tensile stress at smaller cross section area is %0.2f MPa",S2*(10^-6))
mclose(res7)
editor(TMPDIR+'7_stress_in_stepped_bar.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------