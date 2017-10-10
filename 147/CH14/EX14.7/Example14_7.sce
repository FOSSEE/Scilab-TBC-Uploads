close();
clear;
clc;
//using the result of example 14.6
Pd = 65.5 * 1000; //W
N = 1800;
w = 2*%pi*N/60; 
//electromagnetic torque developed 'T'
T = Pd/w;
mprintf("Electromagnetic torque developed, T = %0.1f N-m",T);