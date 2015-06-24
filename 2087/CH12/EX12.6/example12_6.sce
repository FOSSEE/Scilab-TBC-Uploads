

//example 12.6
//calculate floor thickness at mid length and at junction with u/s and d/s cut-off walls
clc;funcprot(0);
//given
b=13;         //length of floor
d=2;          //depth of downstream wall
D=1.5;       //depth of upstream cut-off
rho=2.24;     //relative density
H=1.5;

//at junction of d/s cut-off with floor
alpha=b/d;
lambda=(1+(1+alpha^2)^0.5)/2;
fie=acos((lambda-2)/lambda)/%pi;
C=19*(D/b)^0.5*((d+D)/b);
fie=fie*100-C;
P=H*fie/100;
t=P/(rho-1);
t=round(t*10)/10;
mprintf("floor thickness at junction of d/s cut-off with floor=%f m.",t);

//at junction of u/s cut-off with floor
alpha=b/D;
lambda1=(1+(1+alpha^2)^0.5)/2;
fie=acos((lambda1-2)/lambda1)/%pi;
fic=1-fie;            //by principle reversibility of flow
C=19*(D/b)^0.5*((d+D)/b);
fiec=fic*100+C;
P=fiec*H/100;
t=0.3;              //this the uplift will be counter balanced by downward weigth of impounded water
mprintf("\nfloor thickness at junction of u/s cut-off with floor=%f m.",t);

//at mid-length
P=(1.08+0.489)/2;            //assuming linear variation
t=P/(rho-1);
t=round(t*100)/100;
mprintf("\nfloor thickness at mid-length=%f m.",t);

//exit gradient
G=H/(d*%pi*(lambda)^0.5);
G=round(G*1000)/1000;
//since G<0.18
mprintf("\n G=%f. <0.18./nfloor is safe against failure by piping.",G);
