clc
clear
//Input data
m=0.6;//Mass flow rate of air in kg/s
W=40;//Power required to run the compressor in kW
p1=100;//Initial pressure at the inlet of the compressor in kPa
t1=30;//Initial temperature at the inlet of the compressor in degree centigrade
z=0;//Change in potential energy is neglected
c=0;//Change in kinetic energy is neglected
q=0.4;//Heat lost to the cooling water ,bearings and frictional effects is 40% of input
cp=1.005;//Specific heat at constant pressure in kJ/kg-K

//Calculations
Q=q*W;//Net heat losses from the system in kW
H=W-Q;//Change in total enthalpy of the system in kW
t2=(H/(m*cp))+t1;//The exit air temperature in degree centigrade

//Output
printf('The exit air temperature T2 = %3.0f degree centigrade ',t2)
