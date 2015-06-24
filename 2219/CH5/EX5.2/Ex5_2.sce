//chapter 5 example 1 pg no-227
//=============================================================================
clc;
clear;
//Given Data
F     =  2*10^9;//reflex klystron operating frequency
Vr    =  2000;//Repeller voltage
Va    =  500;//Accelarating voltage
n     =  1;//integer corresponding to mode
e     =  1.6*10^-19;//charge of electron
m     =  9.1*10^-31;//mass of electron in kg
s     =  2*10^-2;//space b/w exit of gap and repeller electrode
dVr1  = 2;//(change in Vr in percentage
//Calculations
dVr   = dVr1*Vr/100;//conversion from percentage to decimal
//dVr/df = ((2*pi*s)/((2*pi*n)-pi/2))*sqrt(8*m*Va/e));
//let df = dVr/((2*pi*s)/((2*pi*n)-pi/2))*sqrt(8*m*Va/e));

df       =  (dVr)/((2*%pi*s)/((2*%pi*n)-(%pi/2))*sqrt(8*m*Va/e));//change in freq as a fun of repeller voltage


//Output
mprintf('Change in frequency is %3.0f MHz',df/10^6);

//=============================================================================
