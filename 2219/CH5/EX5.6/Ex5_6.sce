//chapter 5 example 6
//=============================================================================
clc;
clear;
//Given Data
N     = 8;//no. of resonators

//Calculations
mprintf('ϕ  = (2*π*n)/N \n');//phase difference
mprintf(' ϕ   = (n*π)/4\n');//phase difference
K   = N/2;//useful no. of nodes
//Most dominant mode is the one for which phase differnce b/w adjacent resonators is π radians
//Therefore (n*π)/4 = π
n = 4


//Output
mprintf('Number of possible modes of Resonance is %d\n',N);
mprintf('Number of useful modes of Resonance is %d\n',K);
mprintf('value of integer n for the most dominant mode is %d',n);

//=============================================================================
