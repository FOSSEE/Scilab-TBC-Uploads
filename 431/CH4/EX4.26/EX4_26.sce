//Calculate starting line current and starting torque
//Chapter 4
//Example 4.26
//page 330
clear;
clc; 
disp("Example 4.26")
V=400;                //supply voltage in volts
f=50;                    //frequency in hertz
Id=75;                    //current taken when delta-connected in amperes
printf("current taken when delta-connected=%dA",Id);
Is=Id/3;                    //current taken when star-connected in amperes
printf("\ncurrent taken when star-connected=%dA",Is);
//Tfl be the full load torque
//r=Ts/Tfl
r=1.5;
//since voltage becomes (1/sqrt(3)) when star connected 
//torque is directly proportional to square of voltage
printf("\nStarting torque with winding star connected=%f times of Tfl",(r/3));

