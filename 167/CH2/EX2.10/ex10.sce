//example 10
// cooling of hot fluid in tank
clear
clc
disp('suppose that there is no change in kinetic and potential energy ')
u1=800 //initial internal energy in 800kJ
win=100 //work done by paddle on system in kJ
qout=500 //loss of energy from fluid
disp('applying first law of thermodynamics ')
u2=u1-qout+win //final internal energy in kJ
printf("\n Hence,final internal energy of the fluid is = %.1f kJ. \n",u2);