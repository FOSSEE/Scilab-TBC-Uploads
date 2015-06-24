clear;
clc;

//Example11.6[Cooling of Water in an Automotive Radiator]
//Given:-
m=0.6;//Mass Flow rate of water[kg/s]
Th_in=90,Th_out=65,Tc_in=20,Tc_out=40;//[degree Celcius]
Di=0.005;//[m]
L=0.65;//[m]
n=40;//No of tubes
Cp=4195;//[J/kg.degree Celcius]
//Solution:-
Q=m*Cp*(Th_in-Th_out);//[W]
disp("W",Q,"The rate of heat transfer in the radiator from the hot water to the air is")
Ai=n*%pi*Di*L;//[m^2]
del_T1=Th_in-Tc_out;//[degree Celcius]
del_T2=Th_out-Tc_in;//[degree Celcius]
del_T_lm=(del_T1-del_T2)/log(del_T1/del_T2);//[degree Celcius]
disp("degree Celcius",del_T_lm,"The log mean temperature difference for the counter flow arrangement is")
F=0.97;//Correction Factor for this situation
Ui=Q/(Ai*F*del_T_lm);//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",round(Ui),"the overall heat transfer coefficient is")
