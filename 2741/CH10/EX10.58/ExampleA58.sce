clc
clear
//Page number 498
//Input data 
R=8.4;//The universal gas constant in J.mol^-1.K^-1 
Cv=21;//The spacific heat at constant volume in J.mol^-1.K^-1
P1=2*10^5;//The initial pressure of gas in N/m^2 
V1=20;//The initial volume of the gas occupied in litres 
P2=5*10^5;//The final pressure of the gas in N/m^2 
V2=50;//The final volume of the gas occupied in litres 

//Calculations 
T=(P2*V2)/(P1*V1);//The ratio of final temperature to the initial temperature for perfect gas 
V=V2/V1;//The ratio of final volume to the initial volume for perfect gas 
S=(Cv*log(T))+(R*log(V));//The change of entropy in J/K 

//Output 
printf('The increase in entropy is  %3.2f J/K ',S)

