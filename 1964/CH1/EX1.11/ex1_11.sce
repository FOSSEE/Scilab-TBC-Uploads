//Chapter-1, Example 1.11, Page 24
//=============================================================================
clc;
clear;
//INPUT DATA
m=2;//mass of water in kg
theta1=20;//temperature 20 degree centigrade
theta2=100;//temperature 100 degree centigrade(boiling point of water)
t=0.25;//time taken to boil water in hr
V=240;//power supply in volts
n=80;//efficiency of kettle in percentage
S=1;//specific heat of water
//CALCULATIONS 
H=m*S*(theta2-theta1);//output energy from the kettle in kcal
H=H/860;//output energy from the kettle in kwh
n=n/100;
E=H/n;//electrical energy or input energy to kettle in Kwh
P=E/t;//power rating of kettle in Kw
P=P*1000;//power rating of kettle in w
R=(V*V)/P;//resistance of heating element in ohms
//OUTPUT
mprintf("Thus the resistance of heating element is %2.2f ohms",R);
 

//=================================END OF PROGRAM==============================
