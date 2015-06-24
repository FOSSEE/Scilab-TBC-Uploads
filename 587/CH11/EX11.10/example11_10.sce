clear;
clc;

//Example11.10[Installing a Heat Exchanger to Save Energy and Money]
//Given:-
Cp=4.18;//[kJ/kg.degree Celcius]
Th_in=80,Tc_in=15;//Inlet temperatures of hot and cold water[degree Celcius]
m=15/60;//[kg/s]
e=0.75;//Effectiveness
t=24*365;//Operating Hours[hours/year]
neta=0.8;//Eficiency
cost=1.10;//[$/therm]
//Solution:-
Q_max=m*Cp*(Th_in-Tc_in);//[kJ/kg.degree Celcius]
disp("kJ/kg.degree Celcius",Q_max,"Maximun Heat recover is")
Q=e*Q_max;//[kJ/s]
E_saved=Q*t*3600;//[kJ/year]
disp("kJ/year",E_saved,"The energy saved during an entire year will be")
F_saved=(E_saved/neta)*(1/105500);//[therms]
disp("therms/year",F_saved,"Fuel savings will be")
M_saved=F_saved*cost;//[$/year]
disp("per year",M_saved,"The amount of money saved is $")