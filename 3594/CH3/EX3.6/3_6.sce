
clc
//Given
printf("\n")
OP=2//ft
f=4//ft/s^2
w=2 //rad/s (anticlockwise)
a=5 //rad/s^2 (anticlockwise)
Vpq=3 //ft/s
r=OP
os=w^2*r//component 1
sq=a*r//component 2
qt=f//component 3
tp=2*w*Vpq//component 4
Aqo=(os^2+sq^2)^1/2//vector addition of component(a,b)
Apq=(qt^2+tp^2)^1/2//vector addition of component(c,d)
//Apo=Apq+Aqo (vector addition)
Apo=((os-qt)^2+(sq+tp)^2)^(1/2)
printf("Acceleration of P realative to fixed point O is %.1f ft/s^2",Apo)
