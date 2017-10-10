clc
//Example 26.2
//Comparision of moment of inertia

//------------------------------------------------------------------------------

//Given data
//mean radius
r=0.6 //m
//thickness
t=0.152 //m
//width
b=0.2 //m
//density
rho=7000 //kg/m3

//inner and outer radii
ri=r- t/2
ro=r+ t/2

//Mass of cylinders
mo=%pi* ro^2 *b*rho
mi=%pi* ri^2 *b*rho

res2=mopen(TMPDIR+'2_comparison_of_moment_of_inertia.txt','wt')

//Exact moment of inertia of rim
mfprintf(res2,'(a)The exact moment of inertia of the rim considering difference of moment of inertia is')
mfprintf(res2,'\n\tI=1/2*mo*ro2 - 1/2*mi*ri2\n')
I=(1/2 *mo* ro^2) - (1/2 *mi* ri^2)
mfprintf(res2,'I=%d kgm2\n\n',I)

//Approximate moment of inertia
mfprintf(res2,'(b)/the approximate moment of inertia, considering the rim as a thin ring is:')
mfprintf(res2,'\n\tIapprox=m*r2\n')
Iapprox=(mo-mi)* r^2
mfprintf(res2,'Iapprox=%d kgm2\n\n',Iapprox)

//percentage error
p=((I-Iapprox)/I) *100
mfprintf(res2,'Percent error= %0.1f',p)

mclose(res2)
editor(TMPDIR+'2_comparison_of_moment_of_inertia.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
