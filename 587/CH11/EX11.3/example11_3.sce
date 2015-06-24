clear;
clc;

//Example11.3[The Condensation of Steam in a Condenser]
//Given:-
Th_in=30,Th_out=30,Tc_in=14,Tc_out=22;//Inlet and Outlet temperatures of hot and cold liquids [degree Celcius]
A=45;//[m^2]
U=2100;//[W/m^2.degree Celcius]
h_fg=2431;//Heat of vapourisation of water at Th_i[kJ/kg]
Cp=4184;//Specific heat of cold water [J/kg]
//Solution:-
del_T1=Th_in-Tc_out;//[degree Celcius]
del_T2=Th_out-Tc_in;//[degree Celcius]
del_T_lm=(del_T1-del_T2)/(log(del_T1/del_T2));//[degree Celcius]
disp("degree Celcius",del_T_lm,"The logrithmic Mean temperature difference is")
Q=U*A*del_T_lm;//[W]
disp("W",Q,"The heat transfer rate in the condenser is")
mw=Q/(Cp*(Tc_out-Tc_in));//[kg/s]
disp("kg/s",mw,"The mass flow rate of the cooling water is")

ms=(Q/(1000*h_fg));//[kg/s]
disp("kg/s",ms,"The rate of condensation of steam is")