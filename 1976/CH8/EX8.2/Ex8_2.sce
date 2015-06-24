
//To detemine the Electrochemical Equivalent of Silver
//Page 456
clc;
clear;

I=20; //Current Passed
W=26.84; //amount of silver deposited in gms
t=20*60; //Time Period in seconds

TC=I*t; //Total Charge in the given time period

ECEAg=W*1000/TC; //Electrochemical Equivalent of Silver

printf('The Electrochemical Equivalent of Silver is %g mg/C\n',ECEAg)
