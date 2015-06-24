clc;
clear;
dia=4;//m
sw=9.8;//kN/m^3; specific weight of water
hc=10;//m
ang=60;//degrees
A=%pi*(dia^2)/4;
fres=sw*hc*A;
//for the coordinate system shown xc=xres=0
Ixc=%pi*((dia/2)^4)/4;
yc=hc/(sin (ang*%pi/180));
yres= (Ixc/(yc*A))+yc;
ydist=yres-yc;
disp("kN",fres,"The resultant force acting on the gate of the reservoir =");
disp("m below the shaft and is perpendicular to the gate surface.",ydist,"The resultant force acts through a point along the diameter of the gate at a distance of ")
M=fres*(ydist)*1000;
disp("N*m",M,"Moment required to open the gate=")
hc=1:30;
for i=1:30
    ydist(i)=((Ixc/(i/(sin (ang*%pi/180))*A)));
end

plot2d(hc,ydist)
xtitle("yres-yc m vs hc m","hc m","yres-yc m")
