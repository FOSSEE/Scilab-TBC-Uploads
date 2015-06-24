clc
//initialisation of variables
a=0.75//ft
p=123//mg
v=100//ft
s=33//mg
s1=67//mg
d=26.6//mgd
d1=0.0477//mgd
q=0.750//gpd/sq mile
d2=365//days
//CALCULATIONS
S=p/a//mg per sq mile
Cv=v*s/s1//percent
M=d*d1//mgd per sq mile
D=v*q/M//MAF
D1=(v*p)/(M*d2)//MAF
R=p/q//days
//RESULTS
printf('the use monthly averages rather then daily stream flow=% f days',R)
