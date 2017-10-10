//Chapter 23, Example 23.22
clc
//Initialisation
x="111011011000100"                   //binary numbr to be convert


//Calculation
z1=bin2dec(x)                  //conversion to decimal
z2=dec2hex(z1)                  //conversion to binary

//Results
printf("Hex of 111011011000100 = %s",z2)
