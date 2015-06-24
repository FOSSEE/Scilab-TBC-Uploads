//example 14.3
clc;
clear;
close; 
v1 = input('Enter the value of V1 in volts :'); // taking the inpt voltage  
disp('CASE - a');// case a 
if (v1==0) then
    disp('V2 = 5 V');
    disp('I = 0 mA');
   else
       disp('V2 = 0 V')
       disp('I = 5 mA ')
end
disp('CASE - b'); // case b 
if (v1==0) then
   disp('V2 = 5 V')
       disp('I = 5 mA' )
else
     disp('V2 = 0 V');
    disp('I = 0 mA');
       
end
