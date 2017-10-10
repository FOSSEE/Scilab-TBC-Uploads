//chapter 9 example5a//
clc
clear
//input power=P1,output power=P2,output power at the end of added fibre=P3,insertion loss of the connector=Ls,excess loss of the conductor=dLs//
Po=83.2;//in micro watts//
Pi=100;//in micro watts//
Ls=-10*(log(Po/Pi)*0.43)
printf("\n insertion loss of the connector=%f m\n",Ls)
Ls=0.8;//in km//
L=1.8;//in km//
a=1.9;//constant//
P3=35.5;//in micro watts//
k=-(10*(log(P3/Pi)*0.43));
dLs=k-Ls-(a*L);
printf("\n loss of the conductor=%f dB\n",dLs)
