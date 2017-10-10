//find
clc
//solution
//given
tL=140000//N
ns=4
n=10
L=500//mm
dx=80//mm
E=200000//N/mm^2
f=600//N/mm^2
W=tL/8//N
//let t be thickness and b be th width
//f=6WL/(nbt^2)
//nbt^2=87.5*1000...eq1
//dx=6WL^3/(nEbt^3)
//nbt^3=0.82*10^6....eq2
//from eq1 and eq2 ,we get
t=10//mm
b1=87.5*1000/(n*t^2)
printf("width using bending stress is,%f mm\n",b1)
b2=0.82*10^6/(n*t^3)
printf("width using deflection is,%f mm\n",b2)
printf("taking larger value 87.5 mm into account...")