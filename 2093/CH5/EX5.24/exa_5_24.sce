// Exa 5.24
clc;
clear;
close;
// Given data
A=100;
Af= 10;
f_L= 100;// in Hz
f_H= 10;// in kHz
// Af= A/(1+A*Bita)
Bita= 1/Af-1/A;
f_desh_L= f_L/(1+A*Bita);// in Hz
f_desh_H= f_H/(1+A*Bita);// in kHz
disp(f_desh_L,"Low frequency in Hz is : ")
disp(f_desh_H,"High frequency in kHz is : ")

// Note: In the book Calculation to find the value of high frequency i.e. f_desh_H is wrong so the answer in the book is wrong 
