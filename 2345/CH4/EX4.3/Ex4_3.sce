//Finding heat
//Example 4.3(pg 110)
clc
clear
C=10^-6
V=10000
//here C is capacitance and V voltage
E=1/2*C*V^2
//E is the energy stored in the capacitor
// when the capacitor is discharged all this energy is dissipated as heat in the wire
H=E/4.2
//H is heat produced in calories since 4.2 Joules=1 calorie
printf('Thus the heat produced is %3.4f calories',H)
