clc;
clear;
h=200;//ft
U=40;//mi/hr
d=0.00238;//slugs/ft^3
//V^2= (U^2)*(1 + (2*b*cos(ang)/r) + ((b^2)/(r^2)))
//at point 2, ang=%pi/2
//r=b*(%pi-ang)/sin(ang)=(%pi*b/2)
V=U*(1+(4/(%pi^2)))^0.5;//mi/hr
y2=h/2;//ft
//bernoulli equation
//p1-p2= d*((V2^2)-(V1^2)) + (sw*(y2-y1))
V1=U*(5280/3600);
V2=V*(5280/3600);
pdiff=((d*((V2^2)-(V1^2))/2) + (d*32.2*(y2)))/144;//psi
disp("mi/hr",V,"The magnitude of velocity at (2) for a 40 mi/hr approaching wind =")
disp("psi",pdiff,"The pressure difference between points (1) and (2)=")
u=0:100;

for i=0:100
    pd(i+1)= ((d*((((i*(1+(4/(%pi^2)))^0.5)*(5280/3600))^2)-((i*(5280/3600))^2))/2) + (d*32.2*(y2)))/144;
end
plot2d(u,pd,rect=[0,0,100,0.14])
xtitle("(p1-p2) vs U","U,mph","p1-p2 ,psi")