//Finding temperature coefficient
//Example 2.6(pg. 23)
clc
clear
R80=50,R28=40// resistance in ohms
t=28,T=80// temp in degrees
k28=[(R80/R28)-1]/(T-t)//since RT=Rt{1+k*(T-t)}
printf('The value of Temperature coefficient  at 28 degree C is %3.4f ohms per degree C \n',k28)
k0=k28/(1-k28*t)// since k28=k0/(1+k0*t)
printf('The value of Temperature coefficient  at 0 degree C is %3.4f ohms per degree C',k0)
