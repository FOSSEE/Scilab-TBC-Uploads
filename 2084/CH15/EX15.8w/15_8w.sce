//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.8w
//calculation of the pressing in the guitar to produce required fundamental frequency

//given data
L1=90//length(in cm) of the guitar string
nu1=124//fundamental frequency(in Hz) for L1
nu2=186//required fundamental frequency(in Hz)

//calculation
//from equation of fundamental frequency....nu = (1/(2*L))*sqrt(F/mu)
L2=L1*(nu1/nu2)

printf('the pressing in the guitar to produce the fundamental frequency of 186 Hz is %d cm',L2)
