//Initilization of variables
F=9 //N
m=5 //kg
k=6000 //N/m
f1=1 //Hz
f2=5.4 //Hz
f3=50 //Hz
//Calculations
//Natural Frequency
fn=(1/(%pi*2))*(sqrt(k/m)) //Hz
deltaf=F/(k/1000) //mm
//Part(a)
r1=f1/fn
amp1=deltaf/(1-r1^2) //mm amplitude
//Part (b)
r2=f2/fn
amp2=deltaf/(1-r2^2) //mm amplitude
//Part (c)
r3=f3/fn
amp3=deltaf/(1-r3^2) //mm amplitude
//Result
clc
printf('The amplitudes in part (a),(b) and (c) respectively are \n %f mm,%f mm and %f mm respectively',amp1,amp2,amp3)
