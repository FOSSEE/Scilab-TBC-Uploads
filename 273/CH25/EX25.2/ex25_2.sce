clc;
clear;
//example 25.2
//addition of binary numbers

a=1010.00;        //first number 
b=0011.11;        //second number
A=bin21dec(a);   //converting a in to decimal number 
B=bin21dec(b);   //converting b in to decimal number 
S=A+B;          //adding the two decimal numbers
temp=dec21bin(S); //converting the decimal sum back to binary
format('v',10);   //changing the default precision to 8
disp(temp,'sum is'); //displaying the final output