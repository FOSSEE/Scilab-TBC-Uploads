clc
clear
//Input data
C=(11.4*10^6)//Calorific value of 1 kg of petrol in Calorie/kg
t=25//Total petrol consumed in kg
P=99.75//Power output in kW

//Calculations
C1=(t*C)//Calorific value of 25 kg of petrol in Calorie
E=(C1*4.2)//Energy consumed by the engine in one hour in J/hour
E1=(E/3600)//Energy consumed by the engine in one second in J/s
n=((P*1000)/E1)*100//Efficiency in percent

//Output
printf('The efficiency of the engine is %i percent',n)
