// Example 3.11
clc;
clear;
close;
// Given data
format('v',6);
Av= -8;// voltage gain
Vi= 1;// input voltage in V
I1= 15;//maximum current in µA
I1= I1*10^-6;// in A
R1= Vi/I1;// in Ω
R1= R1*10^-3;// in kΩ
disp(R1,"The value of R1 in kΩ is : ");
disp("The standard value of R1 is 68 kΩ");
R1= 68;// in kΩ
Rf= -Av*R1;// in kΩ
disp(Rf,"The value of Rf in kΩ is : ");

// Note : The calculated value of Rf in the book is wrong [-(-8)*68 is not equal to 384], it will be 544 kΩ
