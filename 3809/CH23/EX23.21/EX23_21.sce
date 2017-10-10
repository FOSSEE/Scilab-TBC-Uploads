//Chapter 23, Example 23.21
clc
//Initialisation
x="F851"               //hex number to be convert


//Calculation
z1=hex2dec(x)                  //conversion to decimal
z2=dec2bin(z1)                  //conversion to binary

//Results
printf("Binary of F851 = %s",z2)
