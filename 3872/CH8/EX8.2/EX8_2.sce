//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 8 ; Example 8.2
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Ip = [10; 10*(cos(120*%pi/180)+%i*sin(120*%pi/180)); 10*(cos(-120*%pi/180)+%i*sin(-120*%pi/180))];   //given column vector of phase current in A
function [Ip1]=phaseshift(x1,x2)                      //Function for shifting the phase
    [r theta]=polar(x1);
    Ip1=r*(cos(theta+x2*%pi/180)+%i*sin(theta+x2*%pi/180));
endfunction
I0 = 1*(Ip(1,1)+Ip(2,1)+Ip(3,1))/3;                                                                  //zero sequence current in A
I1 = 1*(Ip(1,1)+phaseshift(Ip(2,1),120)+phaseshift(Ip(3,1),240))/3;                                  //positive sequence current in A
I2 = (Ip(1,1)+phaseshift(Ip(2,1),240)+phaseshift(Ip(3,1),120))/3;                                    //negative sequence current in A
printf('\nThe zero sequence current V0 = %f A',I0);
printf('\nThe positive sequence current V1 = %f A',I1);
printf('\nThe negative sequence current V2 = %f A',I2);
