clear;
clc;
//Example9.6[Heating Water in a Tube by Solar Enegy]
//Given:-
Ts=40;//Glass Temp[degree Celcius]
T_surr=20;//Surrounding temperature[degree Celcius]
Tavg=(Ts+T_surr)/2;//[degree Celcius]
Do=0.1;//[m]
Di=0.05;//[m]
L=1;//[m]
//Properties of glass at Tavg
k=0.02588;//[W/m.degree Celcius]
Pr=0.7282;//Prandtl Number
nu=1.608*10^(-5);//[m^2/s]
b=1/(Tavg+273);//[K^-1]

Q=30;//Rate pof absorpto\ion of solar radiation[W]
g=9.81;//[m/s^2]
//Solution:-
Ao=%pi*Do*L;//Heat transfer surface area of the glass cover[m^2]
Ra_D=g*b*(Ts-T_surr)*(Do^3)*Pr/(nu^2);
disp(Ra_D,"The Rayleigh Number is")
Nu=((0.6+((0.387*(Ra_D^(1/6)))/((1+((0.550/Pr)^(9/16)))^(8/27))))^2);
disp(Nu,"The Nusselt number is")
ho=k*Nu/Do;//[W/m^2.degree Celcius]
Qo=ho*Ao*(Ts-T_surr);//[W]
disp("W",Qo,"The rate of natural convection heat transfer from the glass cover to the ambient air is")
//Value of Qo is less than 30W so assuming a higher temp of glass cover
T_surr1=41;//[degree Celcius]
Ts1=90;//[degree Celcius]
Tavg1=(T_surr1+Ts1)/2;//[degree Celcius]
b1=1/(Tavg1+273);//[K^-1]
Lc=(Do-Di)/2;//Characteristic length [m]
Ra_L1=g*b1*(Ts1-T_surr1)*(Lc^3)*Pr/(nu^2);
disp(Ra_L1,"The Rayleigh number on assuming higher temperatures")
Fcyl=((log(Do/Di))^4)/((Lc^3)*(((Di^(-3/5))+(Do^(-3/5)))^5));
keff=0.386*k*((Pr/(0.861+Pr))^(1/4))*((Fcyl*Ra_L1)^(1/4));//[W/m.degree Celcius]
Q1=2*%pi*keff*(Ts1-T_surr1)/(log(Do/Di));//[W]
disp("W",Q1,"The rate of heat transfer between the cylinders is")
//Obtained value of Q1 is more than 30 W, so using hit and trial aand suuming more values we get the tube temperature to be 82 degree Celcius,
disp("Therefore tube will reach an equilibrium temperature of 82 degree Celcius when the pump fails")