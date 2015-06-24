//Example 11-3//
//compute gain of an op-amp//
clc
//clears the console//
clear
//clears all existing variables//
Rf=40
Rs=5
Ein=3.2
//Given the resistance values in kilo ohms and the input voltage in volts//
Av=Rf/Rs
//Av denotes the gain of the op-amp//
Eo=Av*Ein
//Eo denotes the output voltage//
disp('The voltage gain of the given op-amp is: ')
disp(Av)
disp('The output voltage of the opamp in volts is: ')
disp(Eo)
//results are displayed//
