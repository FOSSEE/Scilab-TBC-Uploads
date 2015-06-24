clc
//initialisation of variables
r=10000//ft
l=400000//people
q=1000000//mgd
w=100//gpcd
w1=150//gpcd
m=50//percent
g=1.5//ft
h1=2.32//cfs
h2=139//cfs
d=12//ft
c=100//ft
l=10.8//ft
l2=0.85//ft
l1=1000//ft
//CALCULATIONS
a=r*w/q//mgd
b=l*w1/q//mgd
a1=a*g//mgd
b1=b*g//mgd
D=d*sqrt(h1/%pi)//in
D1=d*sqrt(h2/%pi)//in
L=l/l1//ft
L1=l2/l1//ft
//RESULTS
printf('the higher loss of head in small conduits at equal velocity=% f ft',L1)
