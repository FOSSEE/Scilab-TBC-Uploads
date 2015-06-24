
//Example 1.43://limitting values and limiting error
clc;
clear;
R1=25;//in ohms
ER1=4;//percentage error
R2=65;//in ohms
ER2=4;//percentage error
R3=45;//in ohms
ER3=4;//percentage error
er= (ER1/100)*(R1+R2+R3);//magnitude of resultant resistance limiting error
r= (R1+R2+R3);//magnitude of resultant resistance
lr= (er/r)*100;//limiting error
disp(r,"magnitude of resultant resistance in ohms")
disp(er,"resultane error in percentage is ±")
disp(lr," percentage limiting error in percentage is ±")
