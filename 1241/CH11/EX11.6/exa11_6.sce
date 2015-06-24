//Example 11-6//
//resolution and percent resolution of a 12 bit D/A converter,output varies from -50 to 50//
clc
//clears the window//
clear
//clears all existing variables//
E=50-(-50)
n=12
//given the voltage range E in volts and the number of bits n//
disp('12 bit converter can have (2^12)-1 non zero states ')
Res=E/((2^n)-1)
Pres=1/((2^n)-1)*(100)
disp('the resolution in volts is : ')
disp(Res)
disp('the percent resolution is : ')
disp(Pres)
//answers are displayed//
