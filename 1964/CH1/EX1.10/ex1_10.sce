//Chapter-1, Example 1.10, Page 23
//=============================================================================
clc;
clear;
//INPUT DATA
m1=2;//mass of water in kg
theta1=20;//temperature 20 degree centigrade
theta2=100;//temperature 100 degree centigrade(boiling point of water)
t=1/10;//time taken to boil water in hr
x=40;//cost of energy of 1kwh in paise for one unit
y=12;//cost of energy consumed
S=1;//specific heat of water
//CALCULATIONS 
H=m1*S*(theta2-theta1);//heat energy required to raise temperature from theta1 to theta2 in kcals
H=H/860;//heat energy in Kwh
E=(12/40);//electrical energy or input energy to kettle in Kwh
n=H/E*100;//efficiency of kettle in percentage;
P=E/t;//power rating of kettle
//OUTPUT
mprintf("Thus the efficiency of kettle in percentage  and power rating of kettle is %d and %1.0f Kw",n,P);
 

//=================================END OF PROGRAM==============================
