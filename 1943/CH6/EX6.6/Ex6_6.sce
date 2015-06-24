
clc
clear
//Input data
ws=600;//Mass flow rate of feedwater in kg/s
p=140;//The inlet pressure of the feedwater in bar
t=170;//The inlet temperature of the feedwater in degree centigrade
wg=1250;//The mass flow rate of flue gases in kg/s
tg2=450;//The temperature at which flue gases leave the economisers coils in degree centigrade
Vf=12;//The velocity of the flue gas in m/s
Vw=1.2;//The velocity of the water leaving the coil in m/s
Do=0.07;//The outer diameter of the tube in m
Di=0.06;//The inner diameter of the tube in m
U=70;//The overall heat transfer coefficient in W/m^2K
Cp=1.12;//The specific heat capacity of the flue gases in kJ/kgK
V=0.08;//The vertical pitch of the coil in m
B=4.8;//The width of the duct in m
C=0.005;//The clearence on the both sides of the duct in m
pi=3.142;//Mathematical constant

//Calculations
hf=1571.1;//The enthalpy of the saturated liquid at 140 bar in kJ/Kg
ts=336.75;//The saturated temperature at 140 bar in degree centigrade
vf=0.001611;//The specific volume of the saturated liquid at 140 bar in m^3/kg
hf1=719.21;//The enthalpy of the saturated liquid at 170 degree C in kJ/kg
vf1=0.001114;//The specific volume of the saturated liquid at 170 degree C in m^3/kg
tg1=[(ws*(hf-hf1))/(wg*Cp)]+tg2;//The temperature at which flue gases enters the economisers coils in degree centigrade
t1m=(478.25-280)/(log(478.25/280));//The mean temperature for inlet and exit temperature in degree centigrade 
Q=ws*(hf-hf1);//The rate of heat transfer in the economiser in kW
Ao=[Q/(U*t1m)]*10^3;//The outer area in m^2
n=[(ws*(vf/Vw)*(4/pi)*(1/Di^2))];//The number of coils needed in the economiser
l=Ao/(n*pi*Do);//The length of one coil in m
nt=l/(B-(2*C));//The number of turns in on ecoil 
VH=nt*V;//The vertical height of the duct occupied by the economiser coils

//Output
printf('(a) The number of coils needed in the economiser = %3.0f \n (b) The length of one coil = %3.1f m \n (c) The verticle height of the duct occupied by the economiser coils = %3.2f m ',n,l,VH)
