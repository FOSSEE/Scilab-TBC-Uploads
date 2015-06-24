//Initilization of variables
d=60 //mm diameter of the hole
//Areas
At=100*100 //mm^2
Ab=200*100 //mm^2
Ac=((%pi/4)*d^2) //mm^2
bt=100 //mm
ht=100 //mm
bb=200 //mm
hb=100 //mm
//Distance of centroids of each area
yt=150 //mm
yb=50 //mm
yc=150 //mm
//Calculations
y_bar=((At*yt)+(Ab*yb)-(Ac*yc))/(At+Ab-Ac) //mm
//Distances
dt=yt-y_bar //mm
db=y_bar-yb //mm
dc=yc-y_bar //mm
//Values of Inertia
It=(1/12)*(bt)*(ht^3) //mm^4
Ib=(1/12)*(bb)*(hb^3) //mm^4
Ic=(1/4)*(%pi)*((d/2)^4) //mm^4
//Moment of inertia
I=(It+At*dt^2)+(Ib+Ab*db^2)-(Ic+Ac*dc^2) //mm^4
//Result
clc
printf('The moment of inertia is %f mm^4',I)
