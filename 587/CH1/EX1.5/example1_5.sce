clear;
clc;

//Example1.5 (The cost of Heat loss through a Roof)

//(a)
k=0.8;//The thermal conductivity of the roof[W/m.degree.C]
A=6*8;//Area of the roof[m^2]
t1=15;//temperature of inner surface roof[degree C]
t2=4;//temperature of outer surface roof[degree C]
L=0.25;//thickness of roof[m]
Q_=k*A*(t1-t2)/L;//[W]
disp("W",Q_,"The steady rate of heat transfer through the roof is")

//(b)
dt=10;//time period[h]
Q=Q_*dt/1000;//[kWh]
u_cost=0.08;//Unit cost of energy[$/kWh]
Cost=Q*u_cost;//[$]
disp(Cost,"and its cost is $","kWh",Q,"The amount of heat lost through the roof")
