clc
clear
//INPUT DATA
Tl=300;//engine temprature in Degree C
Th=1500;//engine temprature in Degree C
Fc=0.45;//Fuel consumption in kg/hr
cv=40000//kJ/kg
wd=4;//workdone in kW

//CALCULATIONS
nc=((Th-Tl)/(Th+273))*100;//Efficiency of carnot cycle in percentage
Qs=Fc*cv;//Heat is added in kJ/min
na=(wd/(Qs))*(3600*100);//efficiency developed by scientist in percentage

//OUTPUT
printf('(a)Efficiency of carnot cycle is %3.2f percentage \n (b)efficiency developed by scientist is %3.i percentage',nc,na)
