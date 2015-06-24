clc
clear
//Input data 
V=25;//Volume of gasoline consumed by an engine in litres/hour 
cv=6*10^6;//The calorific value of gasoline in calories/litre 
P=35;//The output of the engine in kilowatts 

//Calculations 
h=V*cv;//Total heat produced by gasoline in one hour in calories 
H=h/3600;//Heat produced per second in cal/s 
I=H*4.2;//Heat produced per second in joules/s or watts 
E=((P*1000)/I)*100;//The efficiency in percent 

//Output 
printf('The efficiency of the engine is %3.0f percent ',E)
