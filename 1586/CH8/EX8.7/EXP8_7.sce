clc;funcprot(0);//EXAMPLE 8.7
// Initialisation of Variables
t0=5;.........//We are able to purchase strip of 5cm thickness in cm
tf=0.182;.....//Thickness to be produced in cm
tf2=0.167;.......//Thickness to procedure in cm
//CALCULATIONS
%HW=((t0-tf)/t0)*100;.....//Hot work for a strip from 5cm to 0.182 cm in percent
%HW2=((t0-tf2)/t0)*100;......//Hot work for a strip from 5cm to 0.167 cm in percent
disp(%HW,"Hot work for a strip from 5cm to 0.182 cm in percent:")
disp(%HW2,"Hot work for a strip from 5cm to 0.167 cm in percent")
