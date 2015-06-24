//scilab 5.4.1
//windows 7 operating system
//chapter 10:Feedback In Amplifiers
clc
clear
disp("Negative feedback has to be applied for gain stability")
//A=open loop gain of an amplifier
//B=feedback ratio
Af=10//Af=voltage gain with feedback
//dAf/Af=(1/(1+(A*B)))*(dA/A)
y=2//(dAf/Af)=y=percent change of gain that is allowable
x=20//(dA/A)=x=percent change in open loop gain of an amplifier
a=(x/y)//(1+(A*B))=a
disp("",a,"(1+(A*B))=")
//Af=A/((1+(A*B)))
A=(Af*a)
disp("",A,"Open loop gain A=")
//1+(A*B)=a
B=(a-1)/A
disp("",B,"Minimum value of feedback ratio B=")

