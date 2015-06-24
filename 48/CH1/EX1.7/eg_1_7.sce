clc;
a=0111.10;        //first number 
b=1111.01;        //second number
A=bin21dec(a);   //converting a in to decimal number 
B=bin21dec(b);   //converting b in to decimal number 
S=A+B;          //adding the two decimal numbers
temp=dec21bin(S); //converting the decimal sum back to binary
format('v',10);   //changing the default precision to 8
disp(temp);       //displaying the final output