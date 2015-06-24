clc;
format('v',8);//changing the default precision to 8
a=1000100110;//first number 
b=11001;//second number
A=bin21dec(a);//converting a in to decimal number 
B=bin21dec(b);//converting b in to decimal number 
S=A/B;        //multiply the two decimal numbers
temp=dec21bin(S);//converting the decimal product back to binary
disp("quotient");
disp(temp);//displaying the final output