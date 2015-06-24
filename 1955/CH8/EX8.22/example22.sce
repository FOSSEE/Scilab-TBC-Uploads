clc
clear
//input data
Hs=2.5//Height of the pipe above suction reservoir in m
H1=18//Height of the pipe below supply reservoir in m
H=2.7//Total height through which the pump lifts water in m
Q1=2.75//Discharge of water used from supply reservoir in l/s
Qt=7.51//Discharge of water totally delivered in l/s

//calculations
Hd=H-Hs//Height of the pipe from discharge reservoir in m
Qs=Qt-Q1//Discharge of water in delivery reservoir in l/s
nj=(Qs/Q1)*((Hs+Hd)/(H1-Hd))//Jet pump efficiency 

//output
printf('The efficiency of the jet pump is %3.3f',nj)
