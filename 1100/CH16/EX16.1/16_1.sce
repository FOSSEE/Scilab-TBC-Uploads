clc
//initialisation of variables
h1=1279.1 //Btu/lb
s1=1.7085 //Btu/lb R
p1= 100 //psia
p2=10 //psia
h2=1091.7 //Btu/lb
s2=s1
V1=100 //fps
v2=36.41 //cu ft/lb
w=1 //lb/sec
//Calculations
a2=w*v2/(sqrt(V1*V1 + 2*24956.243*(h1-h2)))
printf ('Exit area = %.5f sq. ft',a2)
pt=0.55*p1
ht=1221.5 //Btu/lb
vt=8.841 //cu ft/lb
at=w*vt/(sqrt(V1*V1 + 2*24956.243*(h1-ht)))
printf ('\n Exit area in case 2 = %.5f sq. ft',at)
