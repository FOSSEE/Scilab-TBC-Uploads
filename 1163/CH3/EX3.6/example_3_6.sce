clear;
clc;
disp("--------------Example 3.6---------------")
//offset = 1/6
phase= (1/6)*360;  //formula to calculate phase in degrees
printf("The phase in degrees = %d°\n\n",phase);
pr=phase*((2*%pi)/360); // degrees to radians conversion
printf("The phase in radians = %4.3f rad",pr); // display the result in radians
