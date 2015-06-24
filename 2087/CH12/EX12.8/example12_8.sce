

//example 12.8
//calculate uplift pressure at two cut-off
clc;funcprot(0);
//given
b=50;       //length of floor
d=8;        //depth of downstream pile
D=8;        //depth of upstream pile
H=5;        //effective head 
tu=1;        //floor thickness at upstream
td=2;        //floor thickness at downstream

//downstream cut-off
alpha=b/d;
lambda=(1+(1+alpha^2)^0.5)/2;
fie=acos((lambda-2)/lambda)/%pi;
fid=acos((lambda-1)/lambda)/%pi;
Ct=(fie-fid)*td/d;
C=19*(D/b)^0.5*((d+D)/b);
fie=fie*100-C-Ct*100;
P=H*fie/100;
P=round(P*100)/100;
mprintf("Pressure at downstream cut-off=%f m.",P);

//upstream cut-off
fie=acos((lambda-2)/lambda)/%pi;
fid=acos((lambda-1)/lambda)/%pi;
fic1=1-fie;
fid1=1-fid;
Ct=(fic1-fid1)*td/d;
C=-19*(D/b)^0.5*((d+D)/b);
fic1=fic1*100-C-Ct*100;
P=H*fic1/100;
P=round(P*100)/100;
mprintf("\nPressure at upstream cut-off=%f m.",P);
G=H/(d*%pi*(lambda)^0.5);
mprintf("\nExit Gradient=%f.",G);


