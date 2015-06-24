//Chapter 12
//Example 12.1
//page 439
//To find stored kinetic energy,rotor acceleration,change in torque angle and rotor speed
clear;clc;
G=100; //base machine rating
H=8.0; //inertia constant
P=4; //no of poles
//(a)To find stored energy in rotor at synchronous speed
stored_energy=G*H;
printf('\nStored energy = %d MJ',stored_energy);

//(b)To find rotor acceleration when mechanical input is raised 80MW for an electrical load of 50MW
Pa=30; //nett power
f=50; //frequency
M=stored_energy/(180*f);
alpha=Pa/M; //rotor acceleration
printf('\n\nRotor acceleration = %0.1f elect deg/s^2 ',alpha);

//(c)To calculate change in torque angle and rotor speed when the above acceleration is maintained for 10 cycles
change_angle=0.5*alpha*(10*20*10^(-3));
printf('\n\nChange in torque angle = %0.2f elect degrees',change_angle);
change_angle=60*alpha/(2*360);
printf('\nChange in torque angle = %0.3f rpm/s',change_angle);
speed=(120*f/P)+(change_angle*0.2);
printf('\n\nRoor speed at the end of 10 cycles = %0.3f rpm',speed);
