//example 9.12//
clc
//clears the screen//
clear
//clears all existing variables//
disp('The LSB of the five-bit ring counter feeds the clock input of the JK flip flop that has been wired as a toggle flip-flop. The ring counter has a  modulus of five and the JK flip-flop works like a divide by two circuit. The modulus of the counter circuit obtained by the cascade arrangement of the two is therefore 10. It is very simple to write the count sequence. First, we write the first ten states of the ring counter output(designated by A, B, C, D and E). The logic status of F can be written by examining logic status of E. F toggles whenever E undergoes 1-to-0 transition')