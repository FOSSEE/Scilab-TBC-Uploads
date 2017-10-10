//To calculate motor speed and its slip

clc;
clear;

f=50;
sf=3/2;
s=sf/f;

p=8;
N=120*f/8;

Nr=poly([0 1],'Nr','c'); // Actual Speed Variable

x=(750*s)-(750-Nr); // Equation To find the Actual Speed

Nr=roots(x); // Actual Speed Constant

printf('The motor runs at a speed of %g rpm and has a slip of %g \n',ceil(Nr),s)
