// Exa 1.2
clc;
clear;
close;
// Given data
Pvacc = 700;// mm of hg
Patm = 760;// mm of hg
Pabs = Patm - Pvacc;// mm of hg
disp(Pabs/760,"Absolute pressure in in kg/cm^2 is :");// as 1kg/cm^2= 760 mm of Hg
disp(Pabs*1.01325/760,"Absolute pressure in bar is : ");// as 1.01325 bar = 760 mm of Hg
disp(Pabs*1.01325/760*10^2,"Absolute pressure in in kPa");// as 1 bar = 10^2 kPa
