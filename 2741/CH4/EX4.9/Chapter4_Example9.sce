clc
clear
//Input data 
R=52;//The relative humidity of air in percent 
t=20;//The temperature of air in degree centigrade 
s1=17.5;//S.V.P of water at 20 degree centigrade in mm 
s2=9.2;//S.V.P of water at 10 degree centigrade in mm 
s3=8.6;//S.V.P of water at 9 degree centigrade in mm 

//Calculations 
s4=(R/100)*s1;//S.V.P at dew point in mm 
s5=s2-s3;//S.V.P for 1 degree centigrade difference in mm 
d=9+((s4-s3)/(s2-s3));//The dew point temperature in degree centigrade 

//Output 
printf('The dew point temperature is %3.2f degree centigrade ',d)
