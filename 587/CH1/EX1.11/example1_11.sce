clear;
clc;

//Example1.11[Heat transfer between two Isothermal Plates]
//Given:-
T1=300,T2=200;//Temperatures of two large parallel isothermal plates[K]
L=0.01;//distance between both plates[m]
e=1;//Emissivity of plates
A=1;//Surface area of plates[m^2]
T_avg=(T1+T2)/2;//Average temperature[K]
sigma=5.67*(10^(-8));//Stefan's constant[W/m^2.K^4]
//Solution (a)[space between plates is filled with air]
k_air=0.0219;//The thermal conductivity of aair at the average temperature[W/m.K]
Q_cond=k_air*A*(T1-T2)/L;//[W]
Q_rad=e*sigma*A*((T1^4)-(T2^4));//[W]
disp("W",round(Q_rad),"and",Q_cond,"The rates of conduction and radiation heat transfer between the plates through the air layer are respectively")
Q_total_a=Q_cond+Q_rad;//[W]
disp("W",round(Q_total_a),"Net rate of heat transfer is")
disp("The heat transfer rate in reality will be higher because of the natural convection currents that are likely to occur in the air space between the plates")
//Solution (b)[space between the plates is evacutaed]
disp("when the air space b/w the plates is evacuted there is no conduction or convection,and the only heat transfer between the plates will be by radiation. ")
disp("Therefore")
Q_total_b=Q_rad;//[W]
disp("W",round(Q_total_b),"Net rate of heat transfer is")
//Solution (c)[space between the plates is filled with urethane insulation]
k_insu=0.026;//At average temperature thermal conductivity of urethane insulation [W/m.K]
disp("An opaque solid material placed b/w the two plates blocks direct radiation heat transfer between the plates")
Q_cond_c=k_insu*A*(T1-T2)/L;//[W]
Q_total_c=Q_cond_c;//[W]
disp("W",round(Q_total_c),"The net rate of heat transfer through the urethane insulation is")
//Solution (d)[the distance between the plates is filled with superinsulation]
k_super=0.00002;//At average temperature thermal conductvity of superinsulation[W/m.K]
disp("The layers of superinsulation prevent any direct radiation heat transfer between the plates")
Q_cond_d=k_super*A*(T1-T2)/L;//[W]
Q_total_d=Q_cond_d;//[W]
disp("W",Q_total_d,"The net rate of heat transfer through the layer of superinsulation is")
