
//Example 12_3
clc();
clear;
//To find the final temperature
t1=27    //units in Centigrade
t1=t1+273 //Units in K
gama=1.4   //Units in Constant
p1=1      //units in Pa
v1_v2=15    //Units of in ratio
logT2=log10(t1)-((gama-1)*(log10(p1)-log10(v1_v2)))
T2=10^logT2              //Units in K
printf("The final temperature is T2=%d K",T2)
