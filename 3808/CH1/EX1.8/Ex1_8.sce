//Chapter 01: The Foundations: Logic and Proofs

clc;
clear;

x = [0 1 1 0 1 1 0 1 1 0];
y = [1 1 0 0 0 1 1 1 0 1];

bit_and=bitand(x,y)
bit_or=bitor(x,y)
bit_xor=bitxor(x,y)

disp(bit_and,"The bitwise AND is")
disp(bit_or,"The bitwise OR is")
disp(bit_xor,"The bitwise XOR is")
