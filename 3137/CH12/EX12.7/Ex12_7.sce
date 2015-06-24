//Initilization of variables
Vo1=80 //ft/s
Vo2=60 //ft/s
g=32.2 //ft/s^2
//Calculations
//Simplfying by equating the two times
t=(-(Vo2*2)-(g*0.5*4))/(Vo1-Vo2-(g*0.5*4)) //s
//Substituting this t in s we get
s=(Vo1*t)-(0.5*g*t*t) //ft
//Result
clc
printf('The time obtained is %f s and the balls meet at %f ft',t,s)
