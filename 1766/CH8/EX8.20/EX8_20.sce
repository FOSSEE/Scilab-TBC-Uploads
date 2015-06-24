clc;funcprot(0);//Example 8.20
//Initilisation of Variables
Tci=280;......//Inlet temparature of water in K
Thi=375;......//Inlet temparature of oil in K
Tho=350;......//Outlet temparature of oil in K
mc=0.201;....//Flow rate of water in kg/s
mh=0.5;.....//Flow rate of oil in kg/s
U=250;..........//Overall heat transfer coefficient in W/m^2C
Cph=2090;....//Specific heat of oil in J/kgK
Cpc=4177;....//Specific heat of water in J/kgK 
//calculations
Q=mh*Cph*(Thi-Tho);......//Heat loss by hot fluid in W
Coil=mh*Cph;....//Capacity coefficients of oil in J/s K
Cwat=mc*Cpc;....//Capacity coefficients of water in J/s K
E=Q/(Cwat*(Thi-Tci));....//Effectiveness 
R=Cwat/Coil;....//
//by using approxiate chart in the appropriate Ntu values, in turn, the required area may be caluclated for each exchanger configuration:
NTUc=0.47;....//got from chart heat exchanger effectiveness(0.327) for counter flow type
Ac=((NTUc)*(Cwat)/U);.....//Heat transfer area of counter flow in m^2
NTUp=0.50;....//got from chart heat exchanger effectiveness(0.327) for parallel flow type
Ap=((NTUp)*(Cwat)/U);.....//Heat transfer area of parallel flow in m^2
NTUcf=0.48;....//got from chart heat exchanger effectiveness(0.327) for crossflow, water mixed type 
Acf=((NTUcf)*(Cwat)/U);.....//Heat transfer area of crossflow, water mixed in m^2
NTUst=0.49;....//got from chart heat exchanger effectiveness(0.327) for shell and tube with four tube side passes type
Ast=((NTUst)*(Cwat)/U);.....//Heat transfer area of shell and tube with four tube side passes in m^2
disp(Ac,"Heat transfer area of counter flow in m^2:")
disp(Ap,"Heat transfer area of parallel flow in m^2:")
disp(Acf,"Heat transfer area of crossflow, water mixed in m^2:")
disp(Ast,"Heat transfer area of shell and tube with four tube side passes in m^2:")
disp("These results are comparable to those obtained earlier, with some possible  in accuracies involved in reading the chart")
