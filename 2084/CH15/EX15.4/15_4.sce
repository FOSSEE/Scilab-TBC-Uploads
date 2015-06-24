//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.4
//calculation of the power transmitted through a given point

//given data
P1=.20//average power(in W)
A1=2//amplitude(in mm) at this point
A2=3//amplitude(in mm)

//calculation
//transmitted power is proportional to the square of the amplitude
P2=P1*(A2/A1)^2

printf('the power transmitted through the given point is %3.2f W',P2)
