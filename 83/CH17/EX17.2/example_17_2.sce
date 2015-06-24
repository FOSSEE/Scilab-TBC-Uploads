//Chapter 17
//Example 17.2
//page 602
//To find capacity of static VAR compensator 
clear;clc;

delta_V=5/100; //allowable voltage fluctuation
S_sc=5000; //system short circuit capacity in MVA
delta_Q=delta_V*S_sc; //size of the compensator
printf('The capacity of the static VAR compensator is +%d MVAR',delta_Q);