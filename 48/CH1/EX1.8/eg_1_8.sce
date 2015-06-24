clc;
format('v',8);  //changing the default precision to 8
a=10010.11;     //first number 
b=01100.10;     //second number
A=bin21dec(a);  //converting a in to decimal number 
B=bin21dec(b);  //converting b in to decimal number 
S=A-B;          //subtracting the two decimal numbers
temp=dec21bin(S);  //converting the decimal number back to binary
disp(temp);       //displaying the final output