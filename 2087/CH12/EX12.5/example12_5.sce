

//example 12.5
//calculate uplift pressure at the junction of inner faces of pile with weir floor using Khosla theory
clc;funcprot(0);
//given
b=16;       //total length of floor
d=5;        //depth of downstream pile
D=4;        //depth of upstream pile
H=2.5;      //head created by weir

//pressure at E
alpha=b/d;
lambda=(1+(1+alpha^2)^0.5)/2;
fie=acos((lambda-2)/lambda)/%pi;
C=19*(D/b)^0.5*((d+D)/b);
fie=fie*100-C;
P=H*fie/100;
P=round(P*1000)/1000;
mprintf("Pressure at E=%f m.",P);

//pressure at C1
alpha=b/D;
lambda=(1+(1+alpha^2)^0.5)/2;
fie=acos((lambda-2)/lambda)/%pi;
fic=1-fie;            //by principle reversibility of flow
C=19*(d/b)^0.5*((d+D)/b);
fic=fic*100+C;
P=fic*H/100;
P=round(P*1000)/1000;
mprintf("\n Pressure at C=%f m.",P);
