//Example 11-7//
//resolution and percent resolution of a 10 bit D/A converter,input voltage varies from -10 to 10//
clc
//clears the window//
clear
//clears all existing variables//
E=10-(-10)
n=10
//given the voltage range E in volts and the number of bits n//
disp('10 bit converter can have (2^10)-1 non zero states ')
Res=E/((2^n)-1)
Pres=1/((2^n)-1)*(100)
disp('the resolution in millivolts is : ')
disp(Res*1000)
disp('the percent resolution is : ')
disp(Pres)
//answers are displayed//
