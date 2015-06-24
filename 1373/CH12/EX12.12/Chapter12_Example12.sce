//Chapter-12, Example 12.12, Page 524
//=============================================================================
clc
clear

//INPUT DATA
mh=250;//Mass flow rate of hot liquid in kg/h
ch=3350;//Specific heat of hot liquid in J/kg.K
Thi=120;//Inlet temperature of hot liquid in degree C
mc=1000;//Mass flow rate of cold liquid in kg/h
Tci=10;//Inlet temperature of cold liquid in degree C
U=1160;//Overall heat transfer coefficient in W/m^2.K
A=0.25;//Surface area of heat exchanger in m^2
cc=4186;//Specific heat of cold liquid in J/kg.K

//CALCULATIONS
Cc=((mc*cc)/3600);//Heat capacity rate for cold liquid in W/K
Ch=((mh*ch)/3600);//Heat capacity rate for hot liquid in W/K
Cmin=min(Cc,Ch);//Minimum heat capacity rate in W/K
Cmax=max(Cc,Ch);//Maximum heat capacity rate in W/K
r=(Cmin/Cmax);//Ratio of min amd max heat capacity rates
NTU=((U*A)/Cmin);//Number of transfer units
e=((1-exp(-NTU*(1+r)))/(1+r));//Effectiveness for a parallel flow heat exchanger
Qmax=(Cmin*(Thi-Tci));//Maximum possible heat transfer rate in W
Q=(e*Qmax);//Actual rate of heat transfer in W
Tco=((Q/Cc)+Tci);//Outlet temperature of cold liquid in degree C
Tho=(Thi-(Q/Ch));//Outlet temperature of hot liquid in degree C


//OUTPUT
mprintf('Effectiveness for a parallel flow heat exchanger is %3.3f \n Outlet temperature of water is %3.2f degree C \n Outlet temperature of cooled liquid is %3.2f degree C',e,Tco,Tho)

//=================================END OF PROGRAM==============================

