clc
//Example 16.3
// Design of leaf spring

//------------------------------------------------------------------------------
//Given Data:

s=850*(10^6)
y=0.125
E=200*(10^9)
L=0.75

res3= mopen(TMPDIR+'3_design_of_leaf_spring.txt','wt')
mfprintf(res3,'(a) Bending stress s=(6*F*L)/(n*b*(t^2))\n')
mfprintf(res3,'deflection y= (12*F*(L^3))/(b*(t^3)*n*E)\n\n')

t=(s*(L^2))/(y*E)
mfprintf(res3,'(b) From above,\n\ts/y = Et/L^2\n')
mfprintf(res3,'t=%0.3f mm\n\n',t*(10^3))

mfprintf(res3,'(c) Strain energy of cantilever leaf spring\n')
mfprintf(res3,'\t=s^2/ 6E * Volume of spring\n')
Se=500
n=6
b=(Se*6*E*2)/((s^2)*n*t*L)
mfprintf(res3,'The width is %0.2ff mm\n',b*(10^3))

mfprintf(res3,"The thickness can be taken as %0.2f mm\n",ceil(t* 10^3))
mfprintf(res3,"The width can be taken as %0.2f mm\n",ceil(b* 10^3))

mclose(res3);
editor(TMPDIR+'3_design_of_leaf_spring.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------