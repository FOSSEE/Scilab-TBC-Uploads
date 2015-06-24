clc
clear
//Input data
L=50//Inductance in mH
R=5//Resistance in ohms
V=6//Volatage of the battery in V
t=5//Time in ms

//Calculations
t1=(L/R)//Time constant in ms
I=(V/R)*(1-exp(-t/t1))//Current in A

//Output
printf('The time constant of the circuit is %i ms \n The current in the circuit is %3.2f A',t1,I)
