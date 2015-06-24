
//To determine the amount saved to replace the equipment
//Page 90
clc;
clear;

Pc=80000; //Plant Cost
UL= 15; //Useful Life of the Plant
SVE=5000; //Salvage Value of the Equipment
r=5/100; //Compound Interest Rate

A1=(Pc-SVE)/UL; //Annual Amount to be saved using straight line method
A2=(Pc-SVE)*r*100/(100*(((1+r)^UL)-1))// Annual Amount to be saaved using Sink Fund Method

printf('i) The Amount to be Saved Annually according to straight line method is %g Rupees\n',A1)
printf('ii) The Amount to be Saved Annually according to sink fund method is %g Rupees\n',A2)
