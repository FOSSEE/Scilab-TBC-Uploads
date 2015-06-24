// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 1")
//Reference to the Fig 2.2 for zero slip beta2 ¼ beta2'. Using Euler's pump equation, E=W/m=(U2*Cw2-U1*Cw1)
Cw1 = 0;
disp ("Euler head = H in meters , Power in Kilowatts, Torque in Newton meters are :")
//H=U2*Cw2/g = (U2/g)*(U2 - 1.5/tan(28))
H = (12/9.81)*(12 - 1.5 / tan(28*%pi/180))
//Power delivered = pho * g * Q * H joules/s 
Power = 1000 * 9.81 * 3.8 * 11.23 /(60 * 1000)// Power will be in kilowatts
//Torque = power/angular velocity
Torque = Power* 1000 * 0.6/12
