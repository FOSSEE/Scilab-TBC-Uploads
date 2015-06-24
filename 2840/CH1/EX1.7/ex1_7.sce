clc;
clear all;
l = 7; //  Length of rubber cube
n = 2e7; // Rigidity modulus in dyne per cm square
F = 200*1000*981; // Force in dyne
A = 49; // Area in cm square
theta = (F/(A*n));
disp('rad',theta,'Shearing stress is ' ) ;
deltal = l*theta;
disp('cm',deltal, 'Change is' );
