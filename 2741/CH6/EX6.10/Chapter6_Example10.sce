clc
clear
//Input data 
T1=400;//The temperature of the source in k 
H1=200;//The amount of heat taken by the engine at T1 in calories 
H2=150;//The amount of heat rejected by the engine to the sink in calories 

//Calculations 
T2=(H2/H1)*T1;//The temperature of the sink in K 
n=(1-(T2/T1))*100;//The efficiency of the engine in percent 

//output 
printf('The temperature of the sink is T2 = %3.0f K \n The efficiency of the engine is %3.0f percent ',T2,n)
