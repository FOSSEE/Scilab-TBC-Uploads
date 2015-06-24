//Chemical Engineering Thermodynamics
//Chapter 1
//Introduction

//Example 1.1
clear;
clc;

//Given 
m = 100;//m is the mass of the object in kg
a = 10;//a is the acceeleration due to gravity in m/s^2

//To determine the force exerted
F = m*a;//F is the force exerted by the object in kg
mprintf('Force exerted by the object= %f N',F);
F = (1/9.8065)*m*a;//F is the force exerted by the object in kgf
mprintf('\n Force exerted by the object= %f N',F);
//end