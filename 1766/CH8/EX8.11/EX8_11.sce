clc;funcprot(0);//Example 8.11
//Initilisation of Variables
Tci=20;......//Inlet temparature of oil in degrees celcius
Tco=90;......//Outlet temparature of oil in degrees celcius
Cpc=2;....//Specific heat of oil in kJ/kgK
Thi=140;......//Inlet temparature of steam in degrees celcius
Tho=115;......//Outlet temparature of steam in degrees celcius
mh=5;....//Mass flow rate of steam in kg/s
U=300;..........//Overall heat transfer coefficient in W/m^2K
Cph=2;....//Specific heat of steam in kJ/kgK 
Cpc=2;....//Specific heat of air in kJ/kgK 
L=2.5;.....//Lemgth of the tube in m
Di=0.05;....//Diameter of tube in m
//calculations
LMTDc=((Thi-Tco)-(Tho-Tci))/log((Thi-Tco)/(Tho-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
R2=(Thi-Tho)/(Tco-Tci);....//Resistanfce from counter flow 
R1=(Tco-Tci)/(Thi-Tci);....//Resistanfce from counter flow
F0=0.97;......//From the graph F and R1,R2
Q=mh*Cph*(Thi-Tho);....//Heat transfer water in W
A=(Q*1000)/(LMTDc*U*F0);......//Area of heat exchanger in counter flow in m^2
mc=Q/(Cpc*(Tco-Tci));.....//Mass flow rate of oil in kg/s
mch=mc/2;........//Mass flow rate of oil is reduced to half
Ch=mh*Cph;....//Heat capacity of air by counter flow kW/K
Cc=mch*Cpc;....//Heat capacity of water by counter flow kW/K
R=Cc/Ch;.....//Resistance
NTU=(U*A)/(Cc*1000);....//Number of transfer units
E=(1/R)*{1-exp(-R*(1-exp(-NTU)))};.....//Effectiveness
Tcoa=Tci+((E*Cc*(Thi-Tci))/Cc);.....//
Thoa=Thi-((E*Cc*(Thi-Tci))/Ch);.....//
Qact=Cc*(Tcoa-Tci);.....//Actual heat transfer in kW
n=A/(%pi*Di*L);.....//Number of tubes
Qred=((Q-Qact)-1)*100/Q;.....//Heat transfer rate if the flow rate of oil is reduced to half
disp(A,"Surface area of heat exchanger in m^2:")
disp(n,"number of tubes of oil flow:")
disp(Qred,"Heat transfer rate if the flow rate of oil is reduced to half:")
