clc
clear
//input data
R=0.5//Degree of reaction
P1=14//Initial pressure in bar
T1=588//Initial temperature in K
P2=0.14//Final pressure in bar
Ns=0.75//Stage efficiency 
RF=1.04//Reheat factor 
N=20//No. of stages
W=11770//Total power output in kW
a1=20//Exit blade angle in degree
hD=1/12//Ratio of blade height to blade mean diameter 

//calculations
hs1=3080//Isentropic enthalpy at initial condition from mollier chart in kJ/kg
hs2=2270//Isentropic enthalpy at final condition from mollier chart in kJ/kg
dhs=hs1-hs2//Isentropic enthalpy change in kJ/kg
Nt=Ns*RF//Overall efficiency
dh=Nt*dhs//Actual enthalpy drop in kJ/kg
hs=dh/N//Enthalpy drop per stage in kJ/kg
m=W/dh//Mass flow rate in kg/s
C11=1.43*1//Velocity of steam at exit from nozzle in m/s in terms of U for 0.5 degree of reaction
Wm=1*((2*C11*sind(90-a1))-1)//Work done per mass of steam in terms of U^2 in kJ/kg
U=((hs*10^3)/Wm)^(1/2)//Mean blade velocity in m/s  as work done equals enthalpy drop per stage 
C1=1.43*U//Velocity of steam at exit from nozzle in m/s 
Ca=C1*cosd(90-a1)//Flow velocity in m/s
v=1.618//Specific volume of steam from steam table at 1.05 bar with dry saturated steam in m^3/kg
D=((m*v)/(hD*3.14*Ca))^(1/2)//Blade mean diameter in m
N=(U*60)/(3.14*D)//Rotor speed in rpm

//output
printf('(a)Mass flow rate of steam is %3.2f kg/s\n(b)Mean blade velocity is %3.1f m/s \n(c)Blade mean diameter is %3.3f m \n(d)Rotor speed is %3i rpm',m,U,D,N)
