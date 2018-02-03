//=====================================================================================
//Chapter 14 example 3

clc;
clear all;

//variable declaration

T   = 2500;         //transitions per second
t1  = 0.1;      //time in s
t2  = 1;      //time in s
t3  = 10;      //time in s

//calculations
C1      = T*t1;         //counter can count or display
C2      = T*t2;         //counter can count or display
C3      = T*t3;         //counter can count or display

//result
mprintf(" counter can count or display when 0.1 s = %3.2d",C1);
mprintf(" \ncounter can count or display when 1 s = %3.2d",C2);
mprintf(" \ncounter can count or display when 10 s = %3.2d",C3);
