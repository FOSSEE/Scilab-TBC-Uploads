//Ch25_Ex28
clc;
clear;
close;
db=1.5; rb=db/2; //diameter and radius of bullet
rc=6; hc=28;//radius and height of cylinder
volC=%pi*rc^2*hc;
volB=(4/3)*%pi*rb^3;
noBullets=volC/volB;
mprintf("THe number of bullets are %d",noBullets);
