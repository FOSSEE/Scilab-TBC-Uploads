//Finding charge and capacity
//Example 15.28(pg. 411)
clc
clear
SI=0.2//steady current in A
t=0.2//time in sec
Q=SI*t//charge given to condenser in Coulomb
V=220//PD across condenser in Volts
C=Q/V//Capacitance of condenser in F
C1=C*(10^6)//Capacitance in mircoF
printf('Thus the Charge of condenser is %2.2f Coulomb\n',Q)
printf('And the Capacitance of condenser is %3.2f microF',C1)
