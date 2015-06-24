//Chapter-12, Example 12.15, Page 530
//=============================================================================
clc
clear

//INPUT DATA
Tci=5;//Inlet temperature of water in degree C
mc=4600;//Mass flow rate of water in kg/h
mh=4000;//Mass flow rate of air in kg/h
Thi=40;//Inlet temperature of air in degree C
U=150;//Overall heat transfer coefficient in W/m^2.K
A=25;//Area of heat exchanger in m^2
Cc=4180;//Specific heat of water in J/kg.K
Ch=1010;//Specific heat of air in J/kg.K

//CALCULATIONS
C1=((mh*Ch)/3600);//Heat capacity of air in W/K
C2=((mc*Cc)/3600);//Heat capacity of water in W/K
Cmin=min(C1,C2);//Minimum value of heat capacity in W/K
Cmax=max(C1,C2);//Maximum value of heat capacity in W/K
r=(Cmin/Cmax);//Ratio of min and max heat capacity in W/K
NTU=((U*A)/Cmin);//Number of heat transfer units
e=0.92;//Effectiveness of heat exchanger from Fig. 12.18 on page no.526
Q=(e*Cmin*(Thi-Tci));//Heat transfer rate in W
Tco=((Q/C2)+Tci);//Outlet temperature of water in degree C
Tho=(Thi-(Q/C1));//Outlet temperature of air in degree C

//OUTPUT
mprintf('The exit temperature of water is %3.1f degree C \n The exit temperature of air is %3.1f degree C',Tco,Tho)

//=================================END OF PROGRAM==============================
