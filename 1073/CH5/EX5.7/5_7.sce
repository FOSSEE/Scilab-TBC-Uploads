clc;
clear;
//Example 5.7
mw_dot=10           //[kg/s]
Cpw=4.187           //[kJ/(kg.K)]
t2=318              //[K]
t1=295              //[K]
Q=mw_dot*Cpw*(t2-t1)    //[kJ/s]
Q=Q*1000                //W
dT1=98              //[K]
dT2=75              //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)         //[K]
hi=850          //[W/sq m.K]
id=0.027            //Inside dia[m]
od=0.031                 //Outside dia [m]
hio=hi*id/od            //[W/sq  m.K]
ho=6000     //Heat transfer coefficients[W/sq m.K]
Uo=1/(1/ho+1/hio)       //[W/sq m.K]
Ao=Q/(Uo*dTlm)          //[sq m]
L=4         //Length [m]
n=Ao/(%pi*od*L)         //[No. of tubes]
printf("\n Number of tubes required = %d\n",round(n));
