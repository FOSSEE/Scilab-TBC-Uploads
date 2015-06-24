//Exa 3.2
clc;clear;close;
format('v',6);
WF=50;//m^3/sec(Water flow)
head=90;//m
LF=75;//%(Load factor)
Eta=90;//%(Efficiency of hydro plant)
L=5;//%(Transmission losses)
TC=350;//MW
hp=140;//MW//Hydro power
//Calculation
P=735.5/75*WF*head*Eta/100/1000;//MW(Power available)
Pnet=P*(100-L)/100;//MW///Net Available hydro power
E=Pnet*24;//MW-hours////Hydro Energy
disp(E,"Available hydro energy(MW-hours) : ");
format('v',5);
C1=hp/((100-L)/100);//MW//Capacity of hydro plant
disp(C1,"Capacity of hydro plant(MW) : ");
C2=TC-hp;//MW//Capacity of thermal plant
disp(C2,"Capacity of thermal plant(MW) : ");
