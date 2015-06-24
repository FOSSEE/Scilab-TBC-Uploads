//Example 11-5//
//compute output voltage for the circuit in fig. 11-13//
clc
//clears the console//
clear
//clears all existing variables//
disp('switch configuration ABCD is 0110 ')
E=8
RA=1
RB=2
RC=4
RD=8
Rf=1
//Given all the resistance values in kilo ohms and the common voltage E in volts//
disp('the current throught resistor RA in milli amps is: ')
IA=0
//switch A is open//
disp(IA)
disp('the current throught resistor RB in milli amps is: ')
IB=E/RB
disp(IB)
disp('the current throught resistor RC in milli amps is: ')
IC=E/RC
disp(IC)
disp('the current throught resistor RD in milli amps is: ')
ID=0
//switch D is open//
disp(ID)
Itot=IA+IB+IC+ID
//total current is denoted by Itot//
If=Itot
Eo=If*Rf
Eo=Eo*(-1)
//Eo denotes output voltage//
disp('Output voltage of the circuit in volts is: ')
disp(Eo)
//result is displayed//
