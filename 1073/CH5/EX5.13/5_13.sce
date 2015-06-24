clc;
clear;
//Example 5.13
mh_dot=1.25         //[kg/s]
Cpw=4.187*10^3      //Heat capacity of water in [J/kg.K]
lambda=315          //[kJ/kg]
Q=mh_dot*lambda     //Rate of heat transfer from vapour     [kJ/s]
Q=Q*10^3            //[W]
Ts=345              //Temperature of condensing vapour[K]
t1=290              //Inlet temperature of water [K]
t2=310              //Outlet temperature of water[K]
dT1=Ts-t1           //[K]
dT2=Ts-t2           //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)         //[K]
//Heat removed from vapour = Heat gained
mw_dot=Q/(Cpw*(t2-t1))      //[kg/s]
hi=2.5                      //[kW/sq m.K]
hi=hi*1000                  //[W/sq m.K]
Do=0.025                    //[m]
Di=0.020                    //[m]
hio=hi*(Di/Do)              //Inside heat transfer cosfficient referred to outside dia in [W/sq m.K]
ho=0.8                      //Outside heat tranbsfer coefficient in [kW/sq m.K]
ho=ho*1000                  //[W/sq m.K]
Uo=1/(1/ho+1/hio)           //[W/sq m.K]
//Ud is 80% of Uc
Ud=(80/100)*Uo             //[W/sq m.K]
Ao=Q/(Ud*dTlm)              //[sq m]
L=1                         //[m]
A=%pi*Do*L                  //Outside area of pipe per m length of pipe
len=Ao/A                    //Total length of piping required.
rho=1000                    //[kg/m^3]
V=mw_dot/rho                //[m^3/s]
v=0.6                       //[m/s]
a=V/v                       //Cross-sectional area for flow pass [sq m]
a1=(%pi*Di^2)/4             //[sq m]
//for single pass on tube side fluid(water)
n=round(a/a1)                      //No. of tubes per pass
l=len/n                     //Length of each tube in [m]
//For two passes on water side:
tn=2*n                      //Total no of tubes
l2=len/tn                   //Length of each tube in [m]
//For four passes on water side/tube side
tn2=4*n                     //Total no. of tubes
l3=len/tn2                  //Length of each tube in [m]

printf("\nNo. of tubes=%d ,\nLength of tube=%f m",tn2,l3);

  
