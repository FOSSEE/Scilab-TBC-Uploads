clc;
clear;
//example 25.8
//binary multiplication

format('v',8);//changing the default precision to 8
a=10101.01;//first number 
b=110.10;//second number
A=bin21dec(a);//converting a in to decimal number 
B=bin21dec(b);//converting b in to decimal number 
S=A*B;        //multiply the two decimal numbers
temp=dec21bin(S);//converting the decimal product back to binary

disp(temp,'product is');//displaying the final output