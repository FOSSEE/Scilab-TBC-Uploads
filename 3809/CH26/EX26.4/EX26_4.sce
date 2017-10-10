//Chapter 26, Example 26.4

clc
//Initialisation
x=5               //decimal number to be convert
y=65536             //2^16 decimal number


//Calculation
z=y-x                           //subtraction from 2^16 number
z1=dec2bin(z)                  //conversion to binary

//Results
printf("-5 as a 16 bit signed number = %s",z1)
