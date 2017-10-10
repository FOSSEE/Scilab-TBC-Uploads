//Example 24_1
clc();
clear;
//To find the angle at which the reinforcement line occurs
n=2    //units in constant
lamda=0.7       //units in cm
d=2        //units in cm
theta2=asin((n*lamda)/d)*180/%pi     //Units in degrees
printf("The angle at which the reinforcement line occurs is theta2=%d degrees",theta2)
