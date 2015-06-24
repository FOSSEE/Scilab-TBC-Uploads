//Section-10,Example-1,Page no.-CT.36
//To calculate the final temperature of the gas.
clc;
y=1.66
T_1=298
//P_2=5*P_1
P_1=1                //let
T_2=(T_1*((5*P_1)/P_1)^((y-1)/y))-273
disp(T_2,'final temperature of the gas(in degree celcius)')
