

clc
//initialisation of variables
c=0.98
g=32.2//ft/sec^2
H=130//ft
hp=100
e=0.8
n=250//rpm
R=18.96
//CALCULATIONS
V=c*sqrt(2*g*H)
v=0.46*V
W=hp*550/(H*e)
D=v*60/(%pi*n)
d=sqrt(W*4/(%pi*62.4*V))
dep=1.2*d
wid=5*d
ga=acos((R+(2.08))/(R+(2.5)))
k=ga*180/%pi
num=360/k
//RESULTS
printf ('\n number of buckets= %.f ',num+1)
