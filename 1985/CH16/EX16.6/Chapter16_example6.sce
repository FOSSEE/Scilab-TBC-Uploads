clc
clear
//Input data
T=[7+273 27+273]//Temperatures between the refrigerator is working in K
W=250//Work done in J

//Calulations
Q2=(W/(T(2)-T(1)))*T(1)//Quantity of heat removed per second in J/s
Qx=(Q2*3600)/10^7//Quantity of heat removed per hour in J/h*10^7

//Output
printf('Quantity of heat removed per hour by the refrigerator is %3.2f*10^7 J/h',Qx)
