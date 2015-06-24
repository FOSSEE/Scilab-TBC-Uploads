//Example 11-4//
//compute output voltage for circuit in fig 11-12//
clc
//clears the window//
clear
//clears all existing varibles//
R1=10
R2=10
R3=10
Rf=10
E1=3
E2=-2
E3=-4
//Given all the resistance values in kilo ohms and the voltages in volts at the inputs//
disp('the current throught resistor R1 in milli amps is: ')
I1=E1/R1
disp(I1)
disp('the current throught resistor R2 in milli amps is: ')
I2=E2/R2
disp(I2)
disp('the current throught resistor R3 in milli amps is: ')
I3=E3/R3
disp(I3)
Eo=-(I1+I2+I3)*Rf
//Eo denotes the output voltage//
disp('The output voltage in volts of the circuit is: ')
disp(Eo)
//answer is displayed//
