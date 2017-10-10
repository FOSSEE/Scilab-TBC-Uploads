// Ex 33 Page 376

clc;clear;close;
// Given
V=500;//V
Pp=1500*10**3;//W (+ve side)
Pn=2000*10**3;//W (-ve side)

P=Pp+Pn;//W
I=P/V;//A
Ip=Pp/(V/2);//A
In=Pn/(V/2);//A
Iob=In-Ip;//A
Ia=Iob/2;//A
printf("Current supplied by the main generator = %.f A",I)
printf("\n Current supplied on +ve side = %.f A",Ip)
printf("\n Current supplied on -ve side = %.f A",In)
printf("\n out-off balance Current = %.f A",Iob)
printf("\n Current in each armature = %.f A",Ia)

