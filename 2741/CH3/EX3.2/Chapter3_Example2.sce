clc
clear
//Input data
dw=1;//The density of water in g/cm^3
da=0.8;//The density of alcohol in g/cm^3
t1=100;//The time taken for the water to cool from 50 to 40 degree centigrade in seconds
t2=74;//The time taken for the alcohol to cool from 50 to 40 degree centigrade in seconds 
V=1;//Let the volume of either liquid be in cm^3

//Calculations 
m=V*dw;//The mass of water in g
M=V*da;//The mass of alcohol in g
w=V;//Water equivalent of each calorimeter in cm^3
C=((((m+w)*t2)/(M*t1))-(w/M));//The specific heat of alcohol in calorie/g-K

//Output
printf('The specific heat of alcohol is C = %3.1f calorie/g-K',C)
