//Example 11_10
clc();
clear;
//To findout the change in benzene volume
delta=1.24*10^-3     //Units in Centigrade^-1
t=10     //Units in Centigrade
v10=100       //Units in cm^3  
v20=delta*t+v10     //Units in cm^3
V=v20*delta*t   //Units in cm^3
v30=V+v20   //Units in cm^3
printf("The change in benzene volume is V30=%.3f cm^3",v30)
  //In textbook the answer is printed wrng as V3=0102.5 cm^3 the correct answer is V3=101.253 cm^3     
