//Exa 1.1a

clc;
clear all;

Yn=80;//voltage across a resistor(Volts)
Xn=79;//Measured voltage (Volts)

//solution
e=Yn-Xn; //absolute error
Pe=(Yn-Xn)/Yn *100;//% error
A=1-abs((Yn-Xn)/Yn); //relative accuracy
a=100*A;
printf('Absolute Error = %d V \n Percentage Error = %.2f percent\n Relative accuracy = %.4f \n Percentage of accuracy = %0.2f percent \n',e,Pe,A,a);
disp("");
