clc
clear
//Input data
T1=(75+273)//Initial temperature in K
T2=(60+273)//Final temperature in K
T0=(30+273)//Surrounding temperature in K
t1=(5*60)//Time taken by the liquid to cool from 75 degrees C to 60 degrees C

//Calculations
T3=(T2-T0)^2/(T1-T0)+T0//The temperature of the body after the next 5 minutes in K

//Output
printf('The temperature of the body after the next 5 minutes is %3.0f K',T3)
