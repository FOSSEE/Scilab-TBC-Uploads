clc
//Example 16.2
// Determination of pressure intensity

//------------------------------------------------------------------------------
//Given Data:
L=1
ne=1
ng=8
b=0.045
F=2000
E=200*(10^9)
y=0.075
// With initial prestress,

// y= (12*F*(L^3))/(b*(t^3)*((2*ng)+(3*ne))*E)
t=((12*F*(L^3))/(y*b*((2*ng)+(3*ne))*E))^(1/3)

n=ng+1
s=(6*F*L)/(n*b*(t^2))
//with no prestress,

se=(18*F*L)/(b*(t^2)*((2*ng)+(3*ne)))

//Printing result file to .txt
res2= mopen(TMPDIR+'2_Determination_of_leaf_thickness.txt','wt')
mfprintf(res2,'y=(12*F*(L^3))/(b*(t^3)*((2*ng)+(3*ne))*E)\n')
mfprintf(res2,'thickness t=%0.3f mm\n\n',t* 10^3)
mfprintf(res2,'With extra full length leaf pre-stressed,\n')
mfprintf(res2,'s = (6*F*L)/(n*b*(t^2))\n\t=%d MN/m^2\n\n',(s*(10^-6)))
mfprintf(res2,'With no pre-stresses,\n')
mfprintf(res2,'se=(18*F*L)/(b*(t^2)*((2*ng)+(3*ne)))\n\t %d MN/m2\n\n",(se*(10^-6)))
mclose(res2);
editor(TMPDIR+'2_Determination_of_leaf_thickness.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------