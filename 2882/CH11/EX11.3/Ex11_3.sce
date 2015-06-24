//Tested on Windows 7 Ultimate 32-bit
//Chapter 11 Oscillators and Multivibrators Pg no. 359
clear;
clc;

//Given

f=3.8D6;//frequency of oscillations in hertz
L=0.2;//equivalent inductance in henry
R=6000;//series resistance in ohms

//Solution

Q=2*%pi*f*L/R;//quality factor Q
printf("Q = %d\n",Q);
