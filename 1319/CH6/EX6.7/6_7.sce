//To find efficiency and useful torque

clc;
clear;

V=500;
N=600/60;// Rotation per second
I=18;
Hp=735.5; // The Value of one horse power is 735.5 W
Pd=10*Hp;// Power Output

Pi=V*I; // Power input

eff=Pd*100/Pi;// Efficiency

//Power ouput electrical = Power mechanical = Po= 2*pi*N*T
T=Pd/(2*%pi*N);

printf('The efficiency of the shunt motor = %g percent \n',eff)
printf('Useful torque = %g Nm \n',T)


