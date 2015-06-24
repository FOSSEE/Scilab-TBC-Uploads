clc
clear
//input data
sc=0.8//Pitch-chord ratio of compressor blade
b1=45//Relative air angle at inlet in degree
b2=15//Relative air angle at oulet in degree
a1=b1//Cascade air angle at inlet in degree
a2=b2//Cascade air angle at outlet in degree

//calculations 
en=a1-a2//Nominal deflection angle of the blade in degree
m=((0.23*(1)^2))+(0.1*a2/50)//An emperical constant for a circular arc camber where (2*a/c)=1
t=(a1-a2)/(1-0.233)//Blade camber angle in degree
d=(m*(sc)^(1/2))*t//The deviation angle of the blade in terms of (degree*t)
ps=a1-(t/2)//The blade stagger for a given circular arc cascade in degree

//output
printf('(a)The nominal deflection angle is %i degree\n(b)The blade camber angle is %3.2f degree\n(c)The deviation angle is %3.2f degree\n(d)The blade stagger is %3.2f degree',en,t,d,ps)
