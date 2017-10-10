//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 8 ; Example 8.1
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Vp = [277; 277*(cos(-120*%pi/180)+%i*sin(-120*%pi/180)); 277*(cos(120*%pi/180)+%i*sin(120*%pi/180))];   //given column vector of phase voltage in volts
function [Vp1]=phaseshift(x1,x2)                              //Function for shifting the phase
    [r theta]=polar(x1);
    Vp1=r*(cos(theta+x2*%pi/180)+%i*sin(theta+x2*%pi/180));
endfunction
V0 = 1*(Vp(1,1)+Vp(2,1)+Vp(3,1))/3;                                                                    //zero sequence voltage in V
V1 = 1*(Vp(1,1)+phaseshift(Vp(2,1),120)+phaseshift(Vp(3,1),240))/3;                                    //positive sequence voltage in V
V2 = 1*(Vp(1,1)+phaseshift(Vp(2,1),240)+phaseshift(Vp(3,1),120))/3;                                    //negative sequence voltage in V
printf('\nThe zero sequence voltage V0 = %f V',V0);
printf('\nThe positive sequence voltage V1 = %f V',V1);
printf('\nThe negative sequence voltage V2 = %f V',V2);
