
clc
clear
//Input data
tg2=160;//The temperature to which the flue gases are cooled in degree centigrade
ta1=35;//The ambient temperature of the air in degree centigrade
wa=1167;//The mass flow rate of air in kg/s
Vg=13;//The inlet velocity of the flue gases in m/s
U=30;//The overall heat transfer coefficient in W/m^2K
Cpg=1.10;//The specific heat of the flue gas in kJ/kgK
Cpa=1.005;//The specific heat of the air in kJ/kgK
R=0.287;//Real gas constant in kJ/kgK
wg=1250;//The mass flow rate of gas in kg/s
tg1=450;//The temperature at the inlet of flue gas in degree centigrade
P=101.325;//Atmospheric temperature in kPa
pi=3.1414;//Mathematical constant
Di=0.06;//The inner diameter of the tube in m
Do=0.065;//The outer diameter of the tube in m

//Calculations
vg1=(R*(273+tg1))/P;//Specific volume of the gas in m^3/kg
ta2=[(wg*Cpg*(tg1-tg2))/(wa*Cpa)]+ta1;//The temperature of the heated air in degree centigrade
t1m=(75-125)/log(75/125);//The mean temperature of the inlet and exit temperature in degree centigrade
Q=wg*Cpg*(tg1-tg2);//The rate of heat transfer in the economiser in kW
Ao=[Q/(U*t1m)]*10^3;//The outer area in m^2
n=[(wg*(vg1/Vg)*(4/pi)*(1/Di^2))];//The number of coils needed in the economiser
l=Ao/(n*pi*Do);//The length of one coil in m

//Output
printf('(a)The length of the tubes = %3.2f m\n (b) The number of tubes = %3.0f  ',l,n)

