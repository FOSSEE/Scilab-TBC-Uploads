// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 7

clear ;clc;

//Given data
t = 10      //t = time period for a liquid is heated in minutes
I = 3       // I = current in amperes
V = 200     // V = electric potential in volts
P = 200     // P = opearted power of rating motor in watts

//Calculate mass of 1 kmol air
t = t * 60;         //units conversion minutes to seconds
E_res = V * I * t;  //Energy transfered by resistor in J
E_pad = P * t;      //Energy transfered by paddle wheel in J
E_tot = E_res + E_pad;  //Total energy transfered
E_tot = E_tot/1000;     //units conversion J to kJ

// Results
mprintf('Total enegy transfered = %3.0f kJ', E_tot)
