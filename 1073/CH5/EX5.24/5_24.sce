
clc;
clear;
//Example 5.24
ho=200;     //[W/sq m.K]
hi=1500;    //[W/sq m.K]
Cpw=4.2;     //Sp heat of Water in [kJ/(kg.K)]
Cpo=2.1;     //Sp heat of Oil in [kJ/(kg.K)]
E=0.8;      //Effectiveness
k=46;       //[W/m.K]
m_dot=0.167;    //[kg/s]

mCp_oil=2*m_dot*Cpo*1000      //For oil [W/K]
//mCp_oil is wrongly calculated as 710.4
mCp_water=m_dot*Cpw*1000      //For water [W/K]
//mCp_oil is wrongly calculated as 710.4
//NOTE:The above two values are wrongly calculated in book as 710.4
//so we take here:
mCp_small=710.4     //[W/K]
//Since both mCp_water and mCp_oil are equal ,therefore:
C=1;

deff('[x]=f(ntu)','x=E-(ntu/(1+ntu))');
ntu=fsolve(1,f)
id=20;      //Internal diameter in [mm]
od=25;      //External diameter in [mm]
hio=hi*id/od        //[W/sq m.K]
Dw=(od-id)/log(od/id)   //[mm]
Dw=Dw/1000              //[m]
x=(od-id)/2             //[mm]
x=x/1000            //[m]
Do=0.025            //External dia in [m]
L=2.5;              //Length of tube in [m]
Uo=1/(1/ho+1/hio+(x/k)*(Dw/Do))     //[W/sq m.K]
A=ntu*mCp_small/Uo   //Heat transfer area in [sq m]
n=A/(%pi*Do*L)      //No of tubes
printf("\nNo. of tubes required = %d",round(n+1));
