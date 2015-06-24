
clc
clear
//Input data
di=0.05;//The inner diameter of the superheater coil in m
T=0.005;//The thickness of the coil in m
p=60;//The pressure of the steam at the exit in bar
t=500;//The temperature of the steam at the exit in degree centigrade
V2=10;//The velocity of the steam at the exit in m/s
ws=80;//The mass flow rate of steam in kg/s
H=140;//The heat flux in the super heated coils in kW/m^2
pi=3.142;//Mathematical constant
Do=0.06;//The outer diameter of the tube in m

//Calculations
h1=2784.3;//The enthalpy of the saturated gas at 60 bar in kJ/kg
h2=3422.2;//The enthalpy of the saturated gas at 500 degreeC in kJ/kg
v2=0.05665;//The specific volume of gas at 500 degreeC in m^3/kg
Q=ws*(h2-h1);//Heat absorption rate in superheater coil in kW
Ao=Q/H;//Surface area required in m^2
n=[(ws*(v2/V2)*(4/pi)*(1/di^2))];//The number of coils needed in the economiser
l=Ao/(n*pi*Do);//The length of one coil in m

//Output
printf('(a)The length of the one coil = %3.2f m\n (b) The number of coils = %3.0f  ',l,n)
