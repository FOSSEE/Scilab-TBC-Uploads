clear;
clc;

//Example11.4[Heating Water in a Counter Flow Heat Exchanger]
//Given:-
mw=1.2,mgw=2;//Mass Flow rate of water and geothermal fluid[kg/s]
U=640;//Overall Heat transfer Coefficient[W/m^2.degree Celcius]
Di=0.015;//[m]
Tw_out=80,Tw_in=20;//Outlet and Inlet temp of water[degree Celcius]
Tgw_in=160;//Inlet temp of geothermal fluid[degree Celcius]
Cp_w=4.18,Cp_gw=4.31;//Specific Heats of water and geothermal fluid[kJ/kg.degree Celcius]
//Solution:-
Q=mw*Cp_w*(Tw_out-Tw_in);//[kW]
disp("kW",ceil(Q),"The rate of heat transfer in the heat exchanger is")
Tgw_out=(Tgw_in-(ceil(Q)/(mgw*Cp_gw)));//[degree Celcius]
disp("degree Celcius",Tgw_out,"The outlet temp of geothermal fluid is")
del_T1=Tgw_in-Tw_out;//[degree Celcius]
del_T2=Tgw_out-Tw_in;//[degree Celcius]
del_T_lm=(del_T1-del_T2)/(log(del_T1/del_T2));//[degree Celcius]
disp("degree Celcius",del_T_lm,"The logrithmic Mean temperature difference is")
As=1000*ceil(Q)/(U*del_T_lm);//[m^2]
disp("m^2",As,"The surface area of the heat exchanger is")
L=As/(%pi*Di);//[m]
disp("m",round(L),"The length of the tube is")
