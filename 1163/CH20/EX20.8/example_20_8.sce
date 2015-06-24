clear;
clc;
disp("--------------Example 20.8----------------")
offset = 100;
first_byte=offset*8; // formula
printf("The first byte number is %d. The number of the last byte cannot be determined as the length of the data is unknown.",first_byte); // length of data is unknown
