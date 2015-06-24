//(A) determine the critical clearing angle 
clear 
clc;
Pm=%i*.12 + %i*.035 + ((%i*.25*%i*.3)/%i*.55);
Pm1=0;
Pm2=1.1*1/.405;
r1=0;
r2=2.716/3.775;
d0=(asind(1/3.775));
dM=(180-asind(1/2.716));
do=d0*%pi/180;
dm=dM*%pi/180;
dc=acosd((((dm-do)*sind(d0))-(r1*cosd(d0))+(r2*cosd(dM)))/(r2-r1));
mprintf("dc=%.2f",dc);

