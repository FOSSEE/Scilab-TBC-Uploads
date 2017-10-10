//Example 10_8
clc();
clear;
//To find the final volume of gas

t1=27   //Units in Centigrade
t1=t1+273    //Units in Kelvin
t2=547   //Units in Centigrade
t2=t2+273    //Units in Kelvin
t1=27   //Units in Centigrade
t1=t1+273    //Units in Kelvin
t1=27   //Units in Centigrade
t1=t1+273    //Units in Kelvin
p2=3700    //units in cm Hg
p1=74     //units in cm Hg
v1_v2=1/((t1/t2)*(p2/p1))     //In terms of V1
printf("The final volume of gas in terms of original volume is V2=%.5f*V1",v1_v2)
