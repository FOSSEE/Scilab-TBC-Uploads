// Exa 5.2

clc;
clear all;

// Given data
// With reference to data given in Exa 5.1

ei=1; // Applied input voltage to integrator(V)
t1=1; // sec

// Given data

er=5;// Reference voltage applied at time t1 to integrator(V)

//  Solution
// Using equation 5.3 from page no. 118

t2=ei/er * t1;// Time interval t2(sec)
printf(' The time interval of t2 is = %.1f sec \n',t2);
