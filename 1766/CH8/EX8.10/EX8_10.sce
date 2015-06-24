clc;funcprot(0);//Example 8.10
//Initilisation of Variables
mc=1.5;....//Mass flow rate of water in kg/s
Tci=5;......//Inlet temparature of water in degrees celcius
mh=1;....//Mass flow rate of air in kg/s
Thi=40;......//Inlet temparature of air in degrees celcius
A=25;.....//Area of the tubes in m^2
U=150;..........//Overall heat transfer coefficient in W/m^2K
Cpc=4.2;....//Specific heat of water in kJ/kgK
Cph=1;....//Specific heat of air in kJ/kgK 
//calculations
Ch=mh*Cph;....//Heat capacity of air by counter flow kW/K
Cc=mc*Cpc;....//Heat capacity of water by counter flow kW/K
R=Cc/Ch;.....//Resistance
NTU=(U*A)/(Ch*1000);....//Number of transfer units
E=0.93;.....//Effectiveness got from grafh E and NTU
Qmax=Ch*(Thi-Tci);.....//Maximum heat transfer in kW
Q=E*Qmax;.....//Actual heat transfer in kW
Tco=(Q/Cc)+Tci;....//Outlet temparature of water in degrees celcius
Tho=Thi-(Q/Ch);...//Outlet temparature of air in degrees celcius
disp(Tco,"Outlet temparature of water in degrees celcius:")
disp(Tho,"Outlet temparature of air in degrees celcius:")
