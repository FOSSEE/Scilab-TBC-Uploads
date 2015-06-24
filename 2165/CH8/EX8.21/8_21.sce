
clc
//initialisation of variables
v=18//ft^3
p=14//lb/in^2
p1=150//lb/in^2
Cp=0.242//T
Cv=0.171//T
j=1400//ft
R=j*(Cp-Cv)//ft.lb
p2=144//ft
I1=137500//ft/lb
I2=6.37//ft/lb
v2=3.282//ft^3
//CALCULATIONS
T=(p2*p*v)/R//Degree C
T2=(p2*p1*v2)/(R)//Degree c
W=Cp*(T2-T)+0.00002*[(T2)^2-(T)^2]//C.H.U/lb
C=v/v2//ratio
//RESULTS
printf('The work done the temperatures at the beginning and end of compression ratio=% f ratio',C)
