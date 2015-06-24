//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.22w
//calculation of the phase difference between the individual motions

//given data
//amplitudes of both the waves are same
//resultant amplitude is equal to individual amplitudes

//calculation
//the resultant amplitude is.......A = sqrt(A^2 + A^2 + 2*A*A*cosd(delta))
//on further solving..........A = 2*A*cos(delta/2)
delta=2*(acosd(1/2))

printf('the phase difference between the individual motions is %d degree',delta)
