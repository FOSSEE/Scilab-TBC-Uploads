//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-11 ;Example 11.1
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

f=60                //frequency  of hydroelectric generating unit
Pr=500              //rated power of hydroelectric generator
V=5                 //rated voltage of hrdroelectric generator
p=32                //pole of hydroelectric generating unit
H=2.0               //Inertia constant in per unit-seconds

Wsyn=2*%pi*f        //Synchronous electrical radian frequency in rad/s
Wmsyn=(2/p)*Wsyn    //synchronous angular velocity of the rotor in rad/s

printf('The Synchronous electrical radian frequency is %.4f rad/s\n',Wsyn);
printf('The synchronous angular velocity of the rotor is %.4f rad/s',Wmsyn);


