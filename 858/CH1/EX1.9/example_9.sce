clc
clear 
printf('example 1.9 page number 30\n\n')

//to find equilibrium vapor liquid composition
p0b = 385     //vapor pressue of benzene at 60 degree C in torr
p0t=140     //vapor pressue of toluene at 60 degree C in torr
xb=0.4;
xt=0.6;

pb=p0b*xb;
pt=p0t*xt;
P=pb+pt;

printf("total pressure = %f torr\n\n",P)

yb=pb/P;
yt=pt/P;
printf("vapor composition of benzene = %f \n vapor composition of toluene = %f\n\n",yb,yt)

//for liquid boiling at 90 degree C and 760 torr, liquid phase composition
x=(760-408)/(1013-408);

printf("mole fraction of benzene in liquid mixture = %f \n mole fraction of toluene in liquid mixture= %f",x,1-x)