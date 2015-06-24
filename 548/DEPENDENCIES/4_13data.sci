//In A low Speed subsonic wind tunnel,one side of a Mercury manometer is connected byto the reservior and the other side is connected to the test section.
r=1/15; //contraction ratio of nozzle A2/A1
P1=1.1*1.01*10^5 //reservior pressure,N/m^2
T1=300 //reseroir temperature,k
Dh=0.1 //height difference between the two coloumns of mercury in meter
D=1.36*10^4; //density of mercury,Kg/m^3
g=9.8;
Dp=D*g*Dh //pressure difference between two coloums P2-P1
R=287; //gas constant for air,J/Kg.k
D1=P1/(R*T1) //density of flowing material