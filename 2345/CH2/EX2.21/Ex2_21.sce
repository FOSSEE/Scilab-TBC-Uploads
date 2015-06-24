//Finding time
//Example 2.21(pg. 58)
clc
clear
m=3.6//mass in kg
S=4200//specific heat of water
T2=95,T1=15// temp in degree C
H=m*S*(T2-T1)//heat utilised in J
printf('Heat utilised is %7.2f Joules \n',H)
e=0.84//efficiency of kettle
Ei=H/e//Energy input in J
printf('Energy input is %8.2f Joules \n',Ei)
W=1000//rating of kettle in watts
t=(Ei/W)/60//time taken in min
printf('Thus time taken is %2.1f min \n',t)
