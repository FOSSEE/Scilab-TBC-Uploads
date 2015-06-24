
//To determine the best location of the substation for a given set of loads
//Page 123
clc;
clear;

//Various loads and how they are positioned on the corners of a square of length 25km
L1=5000; //(0,25)
L2=8000; //(25,25)
L3=3000; //(25,0)
L4=6000; //(0,0)

L=25;//Length of the square

TL=L1+L2+L3+L4; // Total load

X=((L1*0)+(L2*L)+(L3*L)+(L4*0))/TL // X coordinate
Y=((L1*25)+(L2*L)+(L3*0)+(L4*0))/TL// Y coordinate

printf('The Susbstation must be located at (%g km,%g km)\n',X,Y)
