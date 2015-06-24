clc
clear
//Input data
r=8.5;//The compression ratio 
sv=1.4;//The specific heat at constant volume in percent

//Calculations
n=1-(1/r)^(sv-1);//The efficiency of the otto cycle 
ef=[((1-n)/n)*(sv-1)*(log(r))*(sv/100)]*100;//The percentage change in efficiency of an otto cycle and is negative

//Output
printf('The efficiency decreases by %3.3f percent ',ef)
