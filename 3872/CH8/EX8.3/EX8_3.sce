//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 8 ; Example 8.3
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Ip = [10; 0; 10*(cos(120*%pi/180)+%i*sin(120*%pi/180))];;          //given column vector of phase current in A
function [Ip1]=phaseshift(x1,x2)                       //Function for shifting the phase
    [r theta]=polar(x1);
    Ip1=r*(cos(theta+x2*%pi/180)+%i*sin(theta+x2*%pi/180));
endfunction

I0 = (Ip(1,1)+Ip(2,1)+Ip(3,1))/3;                         //zero sequence current in A
I1 = 1*(Ip(1,1)+(Ip(2,1)+phaseshift(Ip(3,1),240)))/3;           //positive sequence current in A
I2 = (Ip(1,1)+Ip(2,1)+phaseshift(Ip(3,1),120))/3;               //negative sequence current in A
In = (Ip(1,1)+Ip(2,1)+Ip(3,1));                                //neutral current in A
printf('\nThe magnitude of zero sequence current I0 in Ampere is %0.3f and its angle is %0.3f degree',abs(I0), atand(imag(I0), real(I0)));
printf('\nThe magnitude of positive sequence current in Ampere is %0.3f and its angle is %0.3f degree ',abs(I1), atand(imag(I1), real(I1)));
printf('\nThe magnitude of negative sequence current in Ampere is %0.3f and its angle is %0.3f degree',abs(I2), atand(imag(I2), real(I2)));
printf('\nThe magnitude of neutral current in Ampere is %0.3f and its angle is %0.3f degree',abs(In), atand(imag(In), real(In)));
