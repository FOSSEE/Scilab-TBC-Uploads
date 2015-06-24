//Finding heat
//Example 15.29(pg. 411)
clc
clear
C=2*(10^-6)//capacitance of condenser in F
V=10000//PD across condenser in Volts
E=(1/2)*C*(V^2)//energy stored in condenser in Joules
H=E/4.2//heat produced in the wire in calories
printf('Thus heat produced in the wire is %2.2f calories',H)
