//Example 17_6
clc();
clear;
//To calculate the cost needed to operate
power=0.7     //Units in KW
time=0.5       //Units in h
heat=power*time  //Units in K Wh
cost=0.10       //Units in Dollars
tcost=cost*heat      //Units in Dollars
printf("Cost needed to operate is=%.4f Dollars",tcost)
