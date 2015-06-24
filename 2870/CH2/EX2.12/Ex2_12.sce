clc;clear;
//Example 2.12

//given values
Win=200;
U=6;
A=30;
To=25;

//calculation
Ti= (Win/U/A)+To;// Win = Qout = U*A*(Ti - To)
disp(Ti,'the indoor air temperature in Celcius')
