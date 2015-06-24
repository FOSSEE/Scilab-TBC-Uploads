
//To determine the range of speed control and duty cycle
//Page
clc;
clear;
E=220; //DC supply voltage
Ra=0.2;
Kaphi=0.08; // Motor Constant
Ia=25; //Average Current
Eav=Ia*Ra; //Voltage Drop

//Eav = lamda * E;
//For Maximum Speed, lamba =1

lamda=Eav/E;

lamda1=1; //Maximum Speed;
Eb= (E*lamda1)-(Ia*Ra); //Back EMF

Speed = Eb/Kaphi; // Maximum Speed

printf('i) The Range of speed control is 0<N<%g \n',Speed)
printf('ii) The Range of duty cycle is %g<lamda<%g\n',lamda,lamda1)
