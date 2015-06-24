//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.12
clear;
clc;

//Given
W = 0;//pump work
Mi = 0;//chamber is initially evacuated
M2 = 0;//no exist stream
H1 = 684.2;//enthalpy of steam at 200 deg cel & 3 Kgf/cm^2

//To calculate the internal energy of the steam in the chamber
//Q=150*m1;.. (a) heat lost from the chamber in Kcal/Kg
//m1=mf;..(b) mass of steam added from large pipe is equal to steam in chamber
 //H1*M1-Q=Mf*Ef; using (a)&(b)
 Ef = H1-150;
 mprintf('The internal energy of steam in chamber is %f Kcal',Ef);
 //end