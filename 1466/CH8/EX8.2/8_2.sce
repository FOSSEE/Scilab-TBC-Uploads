clc
//initialisation of variables
a=0.00001929
b=0.03368
c=0.000221
t=5//c
n=1/12
d=1/4//in
g=32//ft/sec^2
l=100//ft
t1=70//c
va=1//ft/sec
vb=10//ft/sec
ka=0.032
k2=-0.23
//CALCULATIONS
v=a/(1+b*t+(c*t*t))
Re=d*n*va/v
k=8/Re
i=k*4*va*va/(d*n*g)
hf=i*l
v1=a/(1+b*t1+(c*t1*t1))
Re1=d*n*vb/v1
k1=ka*(Re1^k2)
i1=k1*4*vb*vb/(d*n*g)
hf1=i1*l
//RESULTS
printf ('\n loss of head= %.2f ft ',hf )
printf ('\n loss of head= %.f ft ',hf1 )
