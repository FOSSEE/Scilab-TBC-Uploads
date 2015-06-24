//example 7.11
clc
clear
//R = input('Enter the value of the resistance R in Kohms :');
//pw =input('Enter the value of required pulse width in millisecndseconds :');
R=0.5;//tking the given values 
format('v',18);
pw = 1 * 10^-3;
C = pw/(0.33*R); //calculating C
printf('The required value of capacitance is %f microfarads\n',C);
printf('The pulse delay capacitor is %f microfarads',(2*C));
