clc
clear
//Input data
R0=5;//The resistance of the platinum wire of a platinum resistance thermometer at the ice point in ohms
R100=5.93;//The resistance of the platinum wire of a platinum resistance thermometer at the steam point in ohms
Rt=5.795;//The resistance of the platinum wire when both the thermometers are inserted in a hot bath in ohms
P0=100;//The pressure at ice point in cm of Hg
P100=136.6;//The pressure at steam point in cm of Hg
Pt=131.11;//The pressure of the gas in cm of Hg

//Calculations
Tp=((Rt-R0)/(R100-R0))*100;//The temperature of the bath on the platinum scale in degree centigrade
T=((Pt-P0)/(P100-P0))*100;//The temperature of the bath on the gas scale in degree centigrade

//Output data
printf('The temperature of the bath , \n (1)On the platinum scale is %3.2f degree centigrade \n (2)On the gas scale is %3.0f degree centigrade',Tp,T)
