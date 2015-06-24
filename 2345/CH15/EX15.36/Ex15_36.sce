//Finding cost
//Example 15.36(pg. 417)
clc
clear
O=5*735.5//output of motor in W
e=0.85//efficiency of motor
c=2//cost of energy per unit in Rs
I=O/e//input of motor in Watts
t=4//time in hrs
E=I*t/1000//energy consumed in kWh
C=c*E//cost of using the motor in Rs
printf('Thus the cost of using the motor is %2.3f Rs',C)
