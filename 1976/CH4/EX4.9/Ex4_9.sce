
//To Determine the time taken to start the motor
//Page 222
clc;
clear;
HP=746; //According to the TextBook
P=150*HP; //Power Rating
Lim=1.5; //Limited Current Factor
Eshp=5000; //energy stored per hp
N=750; //Rated Speed
w=N*2*%pi/60; //Angular Frequency
Es=Eshp*P/HP; //Total Energy Stored
Tfl=P/w; //Full Load Torque;
Ts=Tfl*Lim; //Starting Torque
Ta=Ts-Tfl; //Torque Available for acceleration
I=2*Es/(w^2); //Moment of Inertia

a=Ta/I; //Angular Accleration

//Intergrating wrt angular frequency
t=integrate('1/a','x',0,w); //Time Taken to start //Angular Acceleration is constant

printf('The time taken to start the motor if the load torque is equal to full load torque\n during the starting period and the current is limited to 1.5 times the full load current is %g seconds\n',t)


