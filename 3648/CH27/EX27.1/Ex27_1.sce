//Example 27_1
clc();
clear;
//What fraction of atomic mass of Uranium is due to its electrons
n=92      //Units in constant
mass=0.000549     //Units in u
tmass=235     //units in u
per=(n*mass)/tmass       //Units in fractions
printf("The fraction of atomic mass of Uranium is due to its electrons is=%.6f",per)
