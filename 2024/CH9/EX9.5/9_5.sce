clc
//Initialization of variables
p2=26.4 //psia
p1=50 //psia
p3=10 //psia
V2rev=1017 //ft/s
cv=0.99
J=778
g=32.2
cp=0.24
T1=460+60 //R
k=1.4
R=1545/29
m=1
cv2=0.92
//calculations
V2d=cv*V2rev
dhr= (V2rev^2 - V2d^2)/(2*g*J)
dtr=dhr/cp
T2=T1*(p2/p1)^((k-1)/k)
T2d=T2+dtr
v2d=R*T2d/(p2*144)
A2d= m*v2d/V2d
V3=1515
V3d=V3*cv2^0.5
T3=T1*(p3/p1)^((k-1)/k)
dhr2=(V3^2 - V3d^2)/(2*J*g)
dtr2=dhr2/cp
T3d=T3+dtr2
v3d=R*T3d/(p3*144)
A3d=m*v3d/V3d
//results
printf("Area = %.5f ft^2",A2d)
printf("\n Area in case 2= %.5f ft^2",A3d)
