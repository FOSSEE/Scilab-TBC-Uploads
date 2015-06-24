clc;funcprot(0);//Example 8.7
//Initilisation of Variables
Tci=50;......//Inlet temparature of water in K
Thi=500;......//Inlet temparature of oil in K
mc=25;....//Flow rate of water in kg/s
mh=20;.....//Flow rate of oil in kg/s
U=1;..........//Overall heat transfer coefficient in W/m^2C
A=40;....//Area of tube in m^2
Cph=2.5;....//Specific heat of oil in kJ/kgK
Cpc=4.2;....//Specific heat of water in kJ/kgK 
//calculations
Ch=mh*Cph;....//Heat capacity of hot fluid by counter flow kW/K
Cc=mc*Cpc;....//Heat capacity of cold fluid by counter flow kW/K
R=Ch/Cc;.....//Resistance
NTU=(U*A)/Ch;....//Number of transfer units
E=(1-exp(-NTU*(1-R)))/(1-(R*exp(-NTU*(1-R))));.....//Effectiveness in counter flow
Tho=-((E*(Thi-Tci))-Thi);.....//Outer temparature of oil in counter flow arrangement in K
Tco=((E*(Thi-Tci))/(Cc/Ch))+Tci;.....//Outer temparature of water in counter flow arrangement in K
Ep=(1-exp(-NTU*(1+R)))/(1+R);.....//Effectiveness in counter flow
Thop=-((Ep*(Thi-Tci))-Thi);.....//Outer temparature of oil in counter flow arrangement in K
Tcop=((Ep*(Thi-Tci))/(Cc/Ch))+Tci;.....//Outer temparature of water in counter flow arrangement in K
Eg=0.52;.....//Effectiveness from the graph of in counter flow from graph
Thog=-((Eg*(Thi-Tci))-Thi);.....//Outer temparature of oil in counter flow arrangement in K
Tcog=((Eg*(Thi-Tci))/(Cc/Ch))+Tci;.....//Outer temparature of water in counter flow arrangement in K
Epg=0.48;.....//Effectiveness from the graph of in parallel flow
Thopg=-((Epg*(Thi-Tci))-Thi);.....//Outer temparature of oil in counter flow arrangement in K
Tcopg=((Epg*(Thi-Tci))/(Cc/Ch))+Tci;.....//Outer temparature of water in counter flow arrangement in K
disp("(i)By calculations")
disp(Tho,"Outer temparature of oil in counter flow arrangement in K:")
disp(Tco,"Outer temparature of water in counter flow arrangement in K:")
disp(Thop,"Outer temparature of oil in parallel flow arrangement in K:")
disp(Tcop,"Outer temparature of water in parallel flow arrangement in K:")
disp("By graph")
disp(Thog,"Outer temparature of oil in counter flow arrangement in K:")
disp(Tcog,"Outer temparature of water in counter flow arrangement in K:")
disp(Thopg,"Outer temparature of oil in parallel flow arrangement in K:")
disp(Tcopg,"Outer temparature of water in parallel flow arrangement in K:")
