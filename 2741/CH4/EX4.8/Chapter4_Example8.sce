clc
clear
//Input data 
t=16.5;//The temperature of air in degree centigrade 
d=6.5;//The dew point in degree centigrade 
s1=7.05;//S.V.P at 6 degree centigrade in mm 
s2=7.51;//S.V.P at 7 degree centigrade in mm 
s3=13.62;//S.V.P at 16 degree centigrade in mm 
s4=14.42;//S.V.P at 17 degree centigrade in mm 

//Calculations 
s5=(s1+s2)/2;//S.V.P at 6.5 degree centigrade in mm 
s6=(s3+s4)/2;//S.V.P at 16.5 degree centigrade in mm 
R=(s5/s6)*100;//Relative humidity of air in percent 

//Output 
printf('The percentage relative humidity of air is R.H = %3.1f percent ',R)
