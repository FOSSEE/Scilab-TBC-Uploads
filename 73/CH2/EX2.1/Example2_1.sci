//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption : Resistance
//Example2.1: a) A resistor has an aspect ratio of 20:1 and sheet resistance of 200 ohm/square. Find out the value of resistance.
// b) Find out the number of squares contained in a 2kiloohm resistor whose sheet resistance is 200 ohm per square.
//Solution: a)
clear;
clc;
function y= myfunction(x,z)//y:resistance, x: sheet resistance=200ohm/square, z: aspect ratio=20:1
y = x*z //since,resiatance=sheet resistance
disp('resistance is=")
disp('ohm',y)
endfunction

// Solution: b)
// we have to find number of square which is to find aspect ratio.
function s=myfunction1(r,p)//r:resistor=2kohm(or 2000ohm), p:sheet resistance=200 Ohm/square, s: number of square(aspect ratio)
s=r/p//since, number of square=(resistor/sheet resistance)
disp('number of squares are=")// include ";"at the time of calling the function
disp('squares',s)
endfunction
//myfunction(200,20/1);myfunction1(2000,200);