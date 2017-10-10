//Rated torque calculation by resistance addition

clc;
clear;

V=240;
I=40;
Ra=0.3;
N1=1500/60;// speed in rotations per sec
N2=1000/60;

Pi=V*I;// Power input

Pc=(I^2)*Ra; // Copper loss

Po=Pi-Pc;

T=Po/(2*%pi*N1);// Rated torque

R1=V/I; // Back EMF is zero

Rex1=R1-Ra;

//Eb directly to N(speed)

Eb1500=V-(I*Ra);
Eb1000=N2*Eb1500/N1;

R=poly([0 1],'R','c');

x=(V-Eb1000)-(I*(R+Ra)); // Characteristic equation to find external resistance

Rex2=roots(x);

printf('The value of the resistance to be added to obtain rated torque \n')
printf('a) At starting = %g ohms\n',Rex1)
printf('b) At 1000 rpm = %g ohms\n',Rex2)
