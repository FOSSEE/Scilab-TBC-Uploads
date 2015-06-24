//example 14.4
clc;
clear;
v1 = input('Enter the value of V1 in volts :'); //part a : v1 =0 ; part b : v1 =5v
if (v1==0) then // checking for V1 
    disp('V2 = 5 V');
    disp('I = 0 mA');
   else
       disp('V2 = 0 V');
       disp('I = 0.5 mA ');
end
