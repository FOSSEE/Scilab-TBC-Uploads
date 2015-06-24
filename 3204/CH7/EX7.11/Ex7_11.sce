// Initilization of variabes
P=20000 //N //Weight of the shaft
D=0.30 //m //diameter of the shaft
R=0.15 //m //radius of the shaft
mu=0.12 // coefficient of friction
// Calculations
// Friction torque T is given by formulae,
T=(2/3)*P*R*mu //N-m
M=T //N-m
// Results
clc
printf('The frictional torque is %f N-m \n',M)
