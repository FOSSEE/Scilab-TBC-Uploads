clc
clear
//Page number 502
//Input data 
t1=121;//The temperature of solid copper sphere in degree centigrade 
dt1=2.6;//The rate of cooling of copper sphere in degree centigrade per minute
t2=195;//The temperature of another solid sphere in degree centigrade 
t=30;//The surrounding temperature in degree centigrade 

//Calculations 
T1=t1+273;//The temperature of solid copper sphere in K 
T2=t2+273;//The temperature of another solid copper sphere in K 
T0=t+273;//The surrounding temperature in K 
R1=1;//Let the radius of the first sphere in m
R2=2*R1;//The radius of the second sphere in m 
dt2=(dt1)*(R1/R2)*((T2^4-T0^4)/(T1^4-T0^4));//The rate at which solid copper sphere cools in degree centigrade per minute 

//Output 
printf('The rate at which solid copper sphere cools is  %3.3f degree centigrade per minute ',dt2)


