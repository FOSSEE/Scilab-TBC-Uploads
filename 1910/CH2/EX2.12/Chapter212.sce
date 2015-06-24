// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 12")
//A spherical tank of internal diameter, Di=5m ,made of t=25mm thick stainless steel(thermal conductivity,k=15W/(m*K)),is used to store water at temprature(Ti)=0°C.Do is outer diameter
Di=5;
t=25;
Do=5+2*(t/1000);//in metre
k=15;
Ti=0;
//The tank is located in a room whose temprature is (To)=20°C.
To=20;
//Emmisivity is 1.
//The convection heat transfer coefficients at the inner and outer surfaces of the tank are hi=80W/(m^2*K) and ho=10W/(m^2*K)
hi=80;
ho=10;
//The heat of fusion of ice at atmospheric pressure is deltahf=334kJ/kg.The stefan-boltzman constant(sigma) is 5.67*10^-8W/m^2.
sigma=5.67*10^-8;
deltahf=334;
//The inner surface area is (A1) and outer surface area is (A2)of the tank
disp("The inner(A1) and outer surfaces(A2) areas of the tank in m^2 are") 
A1=%pi*Di^2
A2=%pi*Do^2
//The individual thermal resistances can be determined as
//The convective resistance is (Ri)
disp("The convective resistance(Ri) at the inner surface in K/W is ")
Ri=1/(hi*A1)
//The conduction resistance is(Rs)
disp("The conduction resistance(Rs)of the tank in K/W is")
Rs=(Do-Di)/(2*k*%pi*Di*Do)
//The convective resistance is(Roc)
disp("The convective resistance(Roc) at the outer surface in K/W is")
Roc=1/(ho*A2)
//The radiative resistance(Ror) at the outer surface is Ror=1/(A2*hr) 
//The radiative heat transfer coefficient hr is determined by hr=sigma*(T2^2+293.15^2)*(T2+293.15)
//But we do not know the outer surface temprature T2 of the tank and hence we cannot determine the value of hr.
//Therfore we adopt an iterative procedure.We assume T2=4°C=277.15K.Putting the value in hr=sigma*(T2^2+293.15^2)*(T2+293.15) we get
T2=277.15;
disp("The radiative heat transfer coefficient hr in W/(m^2*K) is")
hr=sigma*(T2^2+293.15^2)*(T2+293.15)
disp("Therefore the radiative resistance(Ror) at the outer surface in K/W is")
Ror=1/(A2*hr)
//The two parallel resistances Roc and Ror can be replaced by an equivalent resistance Ro as X=(1/Ro)=(1/Roc)+(1/Ror)
disp("The equivalent resistance in K/W is")
X=(1/Roc)+(1/Ror);
Ro=1/X
//Now the resistance Ri,Rs and Ro are in series an hence the total resistance becomes Rtotal=Ri+Rs+Ro 
disp("The total resistance in K/W is")
Rtotal=Ri+Rs+Ro 
//The rate of heat transfer is given by Q=(To-Ti)/Rtotal
disp("The rate of heat transfer,Q in W is")
Q=(To-Ti)/Rtotal
//The outer surface(T2) is calculated as T2=To-Q*Ro
disp("The outer surface temprature in °C is")
T2=To-Q*Ro
disp("which is sufficiently close to the assumption.So there is no need of further iteration")
//The total heat transfer is (Qt),during a 24-hour period
disp("The total heat transfer(Qt) during a 24-hour period in KJ is")
Qt=Q*24*3600/1000
//the amount of ice in kG which melts during a 24 hour period is (mice)
disp("Therefore,the amount of ice(mice)in kG which melts during a 24 hour period is")
mice=Qt/deltahf





