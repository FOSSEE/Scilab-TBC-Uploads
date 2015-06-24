clear;
clc;

//Example7.2[Cooling of a Hot Block by Forced Air at High Elevation]
//Given:-
ReC=5*10^5;//critical Reynolds number
v=8;//Velocity of air[m/s]
T_air=20;//Initial Temperature of air[degree Celcius]
T_plate=140;//Temperature of flat plate[degree Celcius]
T_film=(T_air+T_plate)/2;//Film Temperature of air[degree Celcius]
//Properties of air at film temperature[degree Celcius]
k=0.02953;//[W/m.degree Celcius]
Pr=0.7154;//Prandtl Number
nu=2.097*10^(-5);//Kinematic Viscosity at 1 atm Pressure [m^2/s]
nu_ac=nu/0.823;//Kinematic viscosity at pressure 0.823 atm[m^2/s]
//Solution(a)
L1=6;//Characteristic length of plate along the flow of air[m]
w1=1.5;//width[m]
ReL1=(v*L1)/nu_ac;//Reynolds number
if(ReL1>ReC) then,
    disp("Flow is not laminar")
    //We have average Nusselt Number
    Nu1=((0.037*(ReL1^(0.8)))-871)*(Pr^(1/3));
    disp(ceil(Nu1),"Nusselt Number is")
    h1=k*Nu1/L1;//[W/m^2.degree Celcius]
    As1=w1*L1;//Flow Area of plate[m^2]
    Q1=h1*As1*(T_plate-T_air);
    disp("W",Q1,"Heat Flow Rate is")
else,
    disp("Flow is laminar")
end
//Solution(b)
L2=1.5;//Characteristic length of plate along flow of air[m]
ReL2=v*L2/nu_ac;//Reynolds Number
if(ReL2<Rec) then,
    disp("Flow is laminar")
    Nu2=0.664*(ReL2^(0.5))*(Pr^(1/3));
    disp(ceil(Nu2),"Nusselt Number is")
    h2=k*Nu2/L2;//[W/m^2.degree Celcius]
    Q2=h2*As1*(T_plate-T_air);
    disp("W",ceil(Q2),"The heat transfer rate is")
else,
    disp("Flow is turbulent")
end
