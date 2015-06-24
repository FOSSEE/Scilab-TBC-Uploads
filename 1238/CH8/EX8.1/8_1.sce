//finding binary equivalent weights//
//example 1//
clc
//clears the command window//
clear
//clears// 
n=6;//no. of bits//
LSB1=1/((2^6)-1)
printf('weight of 1st lsb=%f\n',LSB1)
LSB2=2*LSB1
printf('weight of 2nd lsb=%f\n',LSB2)
LSB3=4*LSB1
printf('weight of 3rd lsb=%f\n',LSB3)
LSB4=8*LSB1
printf('weight of 4th lsb=%f\n',LSB4)
LSB5=16*LSB1
printf('weight of 5th lsb=%f\n',LSB5)
MSB=32*LSB1
printf('weight of msb=%f',MSB)
//results are displayed//
