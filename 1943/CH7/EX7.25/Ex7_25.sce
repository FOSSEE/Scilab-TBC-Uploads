
clc
clear
//Input data
n=20//Number of stages
P=12//Power in MW
p=15//Pressure in bar
T=350//Temperature in degree C
p1=0.14//Pressure in bar
ns=75//Stage efficiency in percent
rf=1.04//Reheat factor
p2=1//Pressure in bar
a=20//Angle in degrees
v=0.7//Velocity ratio
h=1/12//Blade height in terms of mean blade diameter

//Calculations
nint=(ns/100)*rf//Internal efficiency 
dhs=855//Enthalpy in kJ/kg
dha=ceil(nint*dhs)//Actual enthalpy change in kJ/kg
w=(P*1000)/dha//Mass flow rate in kg/s
Vb=(sqrt((dha/n)/((((2/v)*cosd(a))-1)*10^-3)))//Velocity in m/s//
vg=1.694//Specific volume in m^3/kg
Dm=sqrt((w*vg)/(3.14*h*(Vb/v)*sind(a)))//Diameter in m
N=((Vb*60)/(3.14*Dm))//Speed in rpm

//Output
printf('(a) the flow rate of steam required is %3.2f kg/s \n (b) the mean blade diameter is %3.3f m \n (c) the speed of the rotor is %3.0f rpm',w,Dm,N)
//In textbook, Vb is given wrong as 141.4 m/s instead of 140.6 m/s. Hence the answers are different.
