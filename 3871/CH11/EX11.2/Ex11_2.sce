//===========================================================================
//chapter 11 example 2
clc;
clear all;

//variable declaration
R	= 10;		//resistance of slide wire in  Ω
n	= 15;		//number of steps of dial
r	= 10;		//resistance of each dial in  Ω
I	= 0.01;		//working current in A
N	= 100;		//number of divisions of slide
a	= 0.2;		//each division of slide can read upto a accurately of its span

//calculations
R1	= (n*r)+R;		//total resistance of potentiometer in Ω
V	= I*R1;		//voltage range of the potentiometer V
v	= R*I;		//voltage drop across slide wire V
x	= v/N;		//each division represents in V
y	= x*a;		//resolution of potentiometer in V

//result
mprintf("resolution of potentiometer = %3.4f V",y);
