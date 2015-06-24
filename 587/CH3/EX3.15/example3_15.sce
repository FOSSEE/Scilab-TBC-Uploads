clear;
clc;

//Example3.15[Cost of Heat Loss through walls in winter]
//Given:-
R_va_insu=2.3;//thickness to thermal conductivity ratio[m^2.degreeCelcius/W]
L1=12;//length of first wall of house[m]
L2=12;//length of second wall of house[m]
L3=9;//length of third wall of house[m]
L4=9;//length of fourth wall of house[m]
H=3;//height of all the walls[m]
T_in=25;//Temperature inside house[degree Celcius]
T_out=7;;//average temperature of outdoors on a certain day[degree Celcius]
ucost=0.075;//Unit Cost of elctricity[$/kWh]
h_in=8.29,h_out=34.0;//Heat transfer coefficients for inner and outer surface of the walls respectively[W/m^2.degree Celcius]
v=24*(3600/1000);//velocity of wind[m/s]
//Solution:-
//Heat transfer Area of walls=(Perimeter*Height)
A=(L1+L2+L3+L4)*H;//[m^2]
//Individual Resistances
R_conv_in=1/(h_in*A);//Convection Resistance on inner surface of wall[degree Celcius/W]
R_conv_out=1/(h_out*A);//Convection Resistance on outer surface of wall[degree Celcius/W]
R_wall=R_va_insu/A;//Conduction resistance to wall[degree Celcius/W]
//All resistances are in series
R_total=R_conv_in+R_wall+R_conv_out;//[degree Celcius/W]
Q_=(T_in-T_out)/R_total;//[W]
disp("W",Q_,"The steady rate of heat transfer through the walls of the house is")
delta_t=24;//Time period[h]
Q=(Q_/1000)*delta_t;//[kWh/day]
disp("kWh/day",Q,"The total amount of heat lost through the walss during a 24 hour period ")
cost=Q*ucost;//[$/day]
disp("per day",cost,"Cost of heat consumption is $")
