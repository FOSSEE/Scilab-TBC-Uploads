//EX3_6: Simplify A′B′C′D′ + A′BC′D′ + A′BD + A′BC′D + ABCD + ACD′ + B′CD′

//clears the screen
clc

//clears already existing variables
clear

disp('A′B′C′D′ + A′BC′D′ + A′BD + A′BC′D + ABCD + ACD′ + B′CD′')
// Eliminating Repeated terms and applying the rule AB + AB' = A
disp('= A′C′D′ + BD(A′ + AC) + ACD′ + B′CD′')
disp('= A′C′D′ + A′BD + BCD + ACD′ + B′CD′')
disp('= A′C′D′ + A′BD + BCD + ACD′ + B′CD′ + ABC') //consensus ACD′ and BCD
disp('= A′C′D′ + A′BD + B′CD′ + ABC')
