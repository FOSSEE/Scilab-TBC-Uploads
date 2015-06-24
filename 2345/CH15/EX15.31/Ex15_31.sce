//Finding resistance
//Example 15.31(pg. 412)
clc
clear
m=0.6//mass of water in kgm
S=4200//specific heat of water
T1=100//temperature in degreeC
T2=10//temperature in degreeC
t=5*60//time in sec
V=230//Supply voltage in Volts
H=m*S*(T1-T2)//Heat required to raise the temp of water from 0 to 100 degree. in J
e=0.78//efficiency of kettle
Ei=H/e//Energy input in Joules
Ei1=Ei/(100*3600)//Energy input in kWh
W=Ei/t//Rating of kettle in watts
R=(V*V)/W//Resistance of heating element in ohms
printf('Thus Resistance of heating element is %2.1f ohms',R)
