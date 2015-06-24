clc
clear 
printf("example 2.1 page number 71\n\n")

//to find the volume of oxygen that can be obtained

p1=15     //in bar
p2=1.013  //in bar
t1=283    //in K
t2=273    //in K
v1=10     //in l

v2=p1*v1*t2/(t1*p2);

printf("volume of oxygen = %f liters",v2)
