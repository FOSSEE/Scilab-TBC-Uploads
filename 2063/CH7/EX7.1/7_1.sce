clc
clear
//Input data
N=1500;//Engine speed in rpm
p=110;//Load on brakes in kg
L=900;//Length of brake arm in mm
g=9.81;//Gravitational force in N/m^2
pi=3.14;//Mathematical constant

//Calculations
T=((p*g)*(L/1000));//Braking torque in Nm
P=((T/1000)*((2*3.14*N)/60));//Power available at the brakes of the engine in kW

//Output
printf('(a) Brake torque is %3.1f Nm \n (b)Power available at the brakes of the engine is %3.2f kW',T,P)
