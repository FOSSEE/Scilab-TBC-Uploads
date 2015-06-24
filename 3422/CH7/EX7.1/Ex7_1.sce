//Example 7.1, page 147
clc
G=500//in kg
h=700// in j/kg/c
s_lambda=%pi*.7*1*12.5
h=(G*h)/s_lambda
//disp(h)
L=((10*1000)/.9)-10000
w=1111
T=w/s_lambda
printf("Final tempearture rise is %f k",T)
