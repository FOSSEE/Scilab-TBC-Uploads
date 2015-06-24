clc
clear
//Input data
R1=8;//Inner radius of the pipe in cm
R2=8.5;//Outter radius of the pipe in cm
x1=3;//Thickness of first layer in cm
x2=5;//Thickness of second layer in cm
T1=300;//Inner surface temperature of the steam pipe in degree centigrade
pi=3.1428;//Constant value of pi 
T4=50;//Temperature at outer surface of insulation in degree centigrade
L=1;//Length of the pipe in m
K1=50;//Thermal conductivity of pipe in W/mC
K2=0.15;//Thermal conductivity of first layer in W/mC
K3=0.08;//Thermal conductivity of second layer in W/mC
h=2751;//Enthalpy of dry and saturated steam at 300 degree centigrade in kJ/kg
q=40;//Quantity of steam flow in gm/hr
hf=1345;//Enthalpy of fluid at 300 degree centigrade in kJ/kg
hfg=1406;//enthalpy at 300 degree centigrade in kJ/kg

//Calculations
R3=R2+x1;//Radius of pipe with first layer
R4=R3+x2;//Radius of pipe with two layers
Q=(2*pi*L*(T1-T4))/((log(R2/R1)/(K1))+(log(R3/R2)/(K2))+(log(R4/R3)/(K3)));//Quantity of heat loss per meter length of pipe in W/m
Q1=Q/1000;//Quantity of heat loss per meter length of pipe in kW
Q2=Q1*3600;//Quantity of heat loss per meter length of pipe in kJ/hr
hg=((h)-(Q2/q));//Enthalpy of steam in kJ/kg
x=(hg-hf)/(hfg);//Dryness fraction of steam

//Output
printf('(a)The quantity of heat lost per meter length of steam pipe Q = %3.1f kJ/hr \n (b)The quantity of steam coming out of one meter length pipe x = %3.5f gm/hr ',Q2,x)
