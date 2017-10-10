//To find the total mechannical power and rotor copper loss

clc;
clear;

P=60*(10^3); // Power input
Pstat=1*(10^3);// Stator Losses
Pirot=P-Pstat;// Rotor Input
s=3/100;// Running slip

Prc=poly([0 1],'Prc','c'); // Variable for rotor copper loss
// Prc = I2^2 * R2

rloss=(Pirot*s)-(3*Prc);

Prc=roots(rloss); // Numerical Value of rotor loss per phase;

Pm=Pirot-(3*Prc); // Mechanical power developed

printf('The rotor loss per phase = %g W \n',Prc)
printf('The Mechanical Power developed = %g kW \n',Pm/1000)
