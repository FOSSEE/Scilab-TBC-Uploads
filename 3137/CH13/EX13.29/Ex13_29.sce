//Initilization of variables
//Modifying the value of C without vo^2 in it
C=5000*5280
G=3.43*10^-8 //Gravatational Constant
M=4.09*10^23 //Mass of the Earth
a=5.31*10^8
//When the orbit is circular e=0
vo1=sqrt(a) //ft/s
//When the orbit is parabolic e=1
vo2=sqrt((C*a+G*M)/C) //ft/s
//Result
clc
printf('The value of vo1=%f is smaller than vo2=%f,hence the\n Satellite will enter a hyperbolic path and never return',vo1,vo2)
//Decimal accuracy causes discrepancy in answers
