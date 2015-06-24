//Chapter-12, Example 12.13, Page 527
//=============================================================================
clc
clear

//INPUT DATA
Tci=15;//Inlet temperature of water in degree C
mc=1300;//Mass flow rate of water in kg/h
ch=2000;//Specific heat of oil in J/kg.K
mh=550;//Mass flow rate of oil in kg/h
Thi=94;//Inlet temperature of oil in degree C
A=1;//Area of heat exchanger in m^2
U=1075;//Overall heat transfer coefficient in W/m^2.K
cc=4186;//Specific heat of water in J/kg.K

//CALCULATIONS
Cc=((mc*cc)/3600);//Heat capacity of water in W/K
Ch=((mh*ch)/3600);//Heat capacity of oil in W/K
Cmin=min(Cc,Ch);//Minimum heat capacity in W/K
Cmax=max(Cc,Ch);//Maximum heat capacity in W/K
r=(Cmin/Cmax);//Ratio of min and max heat capacity
NTU=((U*A)/Cmin);//Number of transfer Units
e=0.94//Effectiveness of heat exchanger from Fig. 12.15 on page no.524
Qmax=(Cmin*(Thi-Tci));//Maximum possible heat transfer rate in W
Q=(e*Qmax);//Actual heat transfer rate in W
Tco=((Q/Cc)+Tci);//Outlet Temperature of water in degree C
Tho=(Thi-(Q/Ch));//Outlet Temperature of oil in degree C

//OUTPUT
mprintf('The total heat transfer is %3.1f W \n Outlet Temperature of water is %i degree C \n Outlet Temperature of oil is %3.2f degree C',Q,Tco,Tho)

//=================================END OF PROGRAM==============================
