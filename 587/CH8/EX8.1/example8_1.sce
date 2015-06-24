clear;
clc;

//Example8.1[Heating of water in a tube by Steam]
//Given:-
id=0.025;//Internal diameter[m]
Tin=15;//Initial temp[degree Celcius]
m_=0.3;//Flow rate[kg/s]
h=800/1000;//avg heat transfer coefficient[W/m^2.degree Celcius]
Tf=115;//Final temp of water[degree Celcius]
Ts=120;//[degree Celcius]
Hs=2203;//Heat of condensation of steam at 120 degree Celcius[kJ/kg]
Tavg=(Tin+Tf)/2;//[degree Celcius]
Cp=4187;//Sp Heat of water at Tavg[J/kg.degree Celcius]
//Solution:-
Q_=m_*Cp*(Tf-Tin)/1000;//[kW]
disp("kW",Q_,"The rate of heat transfer is")
del_Tf=Ts-Tf;//[degree Celcius]
del_Tin=Ts-Tin;//[degree Celcius]
ln_del_T=(del_Tf-del_Tin)/(log(del_Tf/del_Tin));//[degree Celcius]
disp("degree Celcius",ln_del_T,"Logrithmic Mean temperature difference is")
A=Q_/(h*ln_del_T);//[m^2]
disp("m^2",A,"Heat Transfer surface area is")
l=A/(%pi*id);//[m]
disp("m",round(l),"Required tube length is")