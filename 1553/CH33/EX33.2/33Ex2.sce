//Chapter 33 Ex 2

clc;
clear; 
close;
TD=120; rate=15/100; t=1/2;    //given
BG=TD*rate*t;    //banker's gain
BD=TD+BG;         //banker's discount
mprintf("The bankers discount is Rs %d",BD);
