//calculating required data// 
//example 16//
clc
//clears the command window//;
clear
//clears//
V=10;//full scale voltage
W=1/2^12;//weight of LSB//
R=V*W;//resolution//
printf('resolution=%f volt\n',R);//result is displayed//
S=R;//step size//
R1=S/V*100;//percentage resolution//
printf('percentage resolution=%f percent',R1)
//result displayed//
