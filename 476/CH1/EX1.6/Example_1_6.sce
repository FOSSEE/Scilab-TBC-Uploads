//A Textbook of Chemical Engineering Thermodynamics
//Chapter 1
//Introduction and Basic Concepts
//Example 6


clear;
clc;


//Given:
//P/D = constant, where P is pressure and D is diameter
//P =(2*10^5)*D
Df = 2.5; //final diameter (m)
Di = 0.5; //initial diameter(m)

//To determine work done by gas
//Work done = integral(PdV)
//W = intg((2*10^5*D)d(pi/6)(D^3))....that is
W = (%pi/4)*10^5*((Df^4)-Di^4);
mprintf('Work done by gas is %6.4e J',W);

//end