clc;
clear;
//Example 3.20
m_dot=2250    //Mass flow arte in [kg/h]
Cp=3.35    //Specific heat in [kJ/(kg.K)]
dT=316-288.5    //Temperature drop for oil    [K]
Q=Cp*m_dot*dT    //Rate of heat transfer in [kJ/h]
Q=round(Q*1000/3600)    //[J/s] or[W]
Di=0.04    //Inside diameter [m]
Do=0.048    //Outside diamter in [m]
hi=4070    //for steam [W/sq m.K]
ho=18.26    //For oil [W/sq m.K]
Rdo=0.123    //[sq m.K/W]
Rdi=0.215    //[sq m.K/W]
Uo=1/(1/ho+Do/(hi*Di)+Rdo+Rdi*(Do/Di))    //[W/m^2.K]
Uo=2.3
dT1=373-288.5    //[K]
dT2=373-316    //[K]
dTm=(dT1-dT2)/log(dT1/dT2)    //[K]
Ao=Q/(Uo*dTm)    //Heat transfer area in [m^2]
printf("Heatr transfer area is:%f m^2",Ao);

