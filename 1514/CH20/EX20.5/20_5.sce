//chapter 20
//example 20.5
//page 651
clear;
clc ;
//given
Eb=200;//battery voltage mV

es=0;//signal voltage V
Rl=80;//load resistance in ohm
Ed=Eb+es;
Id=2;//diode current mA
Er=(Eb+es);
Il1=Er/Rl;//load current mA
Ib1=Id+Il1;//battery current mA

es=100;//mV
Ed=Eb+es;
Id=1;
Il2=Ed/Rl;
Ib2=Id+Il2;
deitaIl=Il2-Il1;//change in Il
deltaIb=Ib2-Ib1;//change in Ib

es=-100;//mV
Ed=Eb+es;
Id=3;
Il3=Ed/Rl;
Ib3=Id+Il3;
deltaIl= Il3 - Il1;//change in Il
deltaIb=Ib3-Ib1;//change in Ib

//current gain
io=deltaIl;
is=deltaIb;
Ai=io/is;

//op voltage
deltaEr=es;
eo=deltaEr;

//voltage gain
Av=eo/es;

//power gain
Ap=Ai*Av;

printf("\ncurrent gain=%d\nvoltage gain=%d\npower gain=%d",Ai,Av,Ap)





