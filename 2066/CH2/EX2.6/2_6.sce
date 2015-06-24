clc
clear
//Initialization of variables
gam=62.4
x1=4 //ft
x2=6  //ft
y1=6 //ft
z=8 //ft
dy=1 //ft
angle=60 //degrees
//calculations
A1=x1*x2
A2=1/2 *y1^2
yc = (A1*(x1+x2+dy) + A2*(x1+x2))/(A1+A2)
hc=yc*sind(angle)
F=hc*gam*(A1+A2)
ic1=1/12 *x1*y1^3
ic2=1/36*y1*x2^3
ad1=A1*(x1+x2+dy-yc)^2
ad2=A2*(x1+x2-yc)^2
It=ic1+ic2+ad1+ad2
ydc=It/(yc*(A1+A2))
function m= momen(u)
    m= gam*sind(angle) *(2*x1+u)*0.5*(x2-u)*(y1-u)
endfunction
MED=intg(0, y1, momen)
FEDC=gam*sind(angle) *A2*(x1+x2)
xed=MED/FEDC
xp= (A1*2*(x1+x2+dy) + (x1+x2)*(A2)*(x1+xed))/(A1*(x1+x2+dy) + A2*(x1+x2))
//results
printf("Magnitude of total force = %d lb",F)
printf("\n Vertical location of force = %.3f ft",ydc)
printf("\n Horizontal location of force = %.2f ft from AB",xp)
printf("\n Direction of force is perpendicular to the plane surface")
