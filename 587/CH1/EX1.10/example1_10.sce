clear;
clc;

//Example1.10[Heat Loss from a Person]
//Given:-
T_room=20+273;//Temperature of breezy room[K]
T_outr=29+273;//Average outer surface temperature of the person[K]
As=1.6;//Exposed Surface Area[m^2]
h=6;//Convection Heat transfer coefficient[W/m^2.K]
e=0.95;//Emissivity of person
sigma=5.67*(10^(-8));//Stephan's constant[W/m^2.degree Celcius]
Q_conv=h*As*(T_outr-T_room);//[W]
disp("W",Q_conv,"Rate of convection heat transfer from the person to the air in the room is")
Q_rad=e*sigma*As*((T_outr^4)-(T_room^4));//[W]
disp("W",Q_rad,"The rate of convection heat transfer from the person to the surrounding walls,cieling,fllor is")
Q_total=Q_conv+Q_rad;//[W]
disp("W",round(Q_total),"The rate of total heat transfer from the body is ")