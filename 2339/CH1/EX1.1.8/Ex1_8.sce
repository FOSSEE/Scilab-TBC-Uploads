clc
clear

//Declaring Values
m=600;          //Mass in kg
z=50000;        //Distance in meters
V=2500000;      //Velocity in m/hr
g=7.9;          //Gravitational Field in m/s^2
Vel=V/3600;
KE=(0.5*m*Vel*Vel)/1000000;   //Kinetic Energy in MJ
PE=(m*g*z)/1000000;                   //Potential Energy in MJ

//Displaying Results
printf('The Kinetic Energy is %3.2f MJ',KE);
printf('\n')
printf('The Potential Energy is %3.2f MJ',PE);
