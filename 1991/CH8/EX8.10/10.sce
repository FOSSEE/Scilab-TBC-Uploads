clc
clear
//input
v=15*10^3 //voltage
p=80*10^3 //power
r=430 //resistence
v1=150*10^3//stepped value
//calculation
i=p/v//cable current
i1=p/v1//stepped up cable current
k=i*i/(i1*i1)//ratio of power loss
//output
printf("the ratio of power loss is %d",k)
