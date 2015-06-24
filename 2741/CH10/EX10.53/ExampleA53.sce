clc
clear
//Page number 495 
//Input data 
t1=27;//The temperature of the source in degree centigrade 
t2=-73;//The temperature of the sink in degree centigrade 
H2=300;//The amount of heat released by the sink in cal 

//Calculations 
T1=t1+273;//The temperature of the source in K 
T2=t2+273;//The temperature of the sink in K 
H1=H2*(T1/T2);//The amount of heat released by the source in cal 
W=H1-H2;//The work performed per cycle in cal 
W1=W*4.2;//The work performed per cycle in J 

//Output 
printf('The work performed by the engine per cycle is  %3.0f J ',W1)

