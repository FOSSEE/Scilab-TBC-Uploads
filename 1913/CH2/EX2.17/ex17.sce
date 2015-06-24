clc
clear
//Input data
p1=720;//Pressure at the entrance in kPa
t1=850;//Temperature at the entrance in degree centigrade 
c1=160;//Velocity of the gas at entrance in m/s
Q=0;//Insulation (adiabatic turbine)
P2=115;//Pressure at the exit in kPa
t2=450;//Temperature at the exit in degree centigrade
c2=250;//Velocity of the gas at exit in m/s
cp=1.04;//Specific heat of gas at constant pressure in kJ/kg-K

//Calculations
H=cp*(t1-t2);//Change in Enthalpy of the gas at entrance and exit in kJ/kg
W=((c1^2-c2^2)/(2*1000))+(H);//External work output of the turbine in kJ/kg

//Output
printf('The external work output of the turbine W = %3.2f kJ/kg ',W)
