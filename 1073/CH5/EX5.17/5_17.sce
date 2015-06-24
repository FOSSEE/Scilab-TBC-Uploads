clc;
clear;
//Example 5.17
mb_dot=1.25         //Benzene in [kg/s]
Cpb=1.9*10^3             //For benzene in [J/kg.K]
Cpw=4.187*10^3           //in [J/kg.K]
T1=350              //[K]
T2=300              //[K]
Q=mb_dot*Cpb*(T1-T2)    //[W]
t1=290                  //[K]
t2=320                  //[K]
dT1=T1-t2               //[K]
dT2=T2-t1               //[K]
dTlm=(dT1-dT2)/log(dT1/dT2) //[K]
mw_dot=Q/(Cpw*(t2-t1))        //Minimum flow rate of water in [kg/s]
hi=850                      //[W/sq m.K]
ho=1700                     //[W/sq m.K]
Do=0.025                    //[m]
Di=0.022                    //[m]
x=(Do-Di) /2                    //Thickness in [m]
hio=hi*(Di/Do)              //[W/sq m.K]
Dw=(Do-Di)/log(Do/Di)       //[m]
k=45                        //[W/m.K]
Uo=1/((1/ho)+(1/hio)+(x/k)*(Do/Dw)) //[W/sq m.K]
Ao=Q/(Uo*dTlm)                  //[sq m]
L=1                             //Length in [m]
area=%pi*Do*L                   // Outside surface area of tube per i m length 
Tl=Ao/area                      //Total length of tubing required in [m]
printf("\nTotal length of tubing required=%d m",round(Tl));      


