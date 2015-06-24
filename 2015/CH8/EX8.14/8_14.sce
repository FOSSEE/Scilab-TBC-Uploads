clc
//initialisation of variables
t1=1100 //K
t2=275 //K
g=1.4
pa=101.32
qs=250 //kj/kg
r=0.287 //kj/kgK
//CALCULATIONS
p1=(t1/t2)^(3.5)*pa //(g/g-1)=3.5
pb=2.2075*p1
va=(r*t2)/pa
vb=(r*t1)/pb
mep=(0.75*qs)/(va-vb)
printf('mean effective pressure is %2f units',mep)
