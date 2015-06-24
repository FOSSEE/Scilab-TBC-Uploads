clc
clear
//input
r1=40//resistance 1
r2=20//resistamce 2
r3=10//resistance 3
v=1.6//voltage
//calculation
R=r1+r2+r3//total resistance in series
x=((v*r1)*70)/((2*50)*(1.6*40))//fraction of pd
x=x*100//percentage pd
//output
printf("the percentage of pd is %3.0f percent",x)
