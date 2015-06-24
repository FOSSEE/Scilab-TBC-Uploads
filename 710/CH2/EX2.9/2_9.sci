clc();
clear;
//To determine the density of free electrons
rho=9000;                         //density in kg/m^3
w=65;                             //atomic weight
v=1;                              //volume in m^3
n=(rho*v)/(w/(6.022*10^26));      //number of atoms
a=1.4;                            //average number of free electrons per atom
rhoe=n*a                          //density of free electrons per atom in electrons/m^3
printf("The density of free electrons is %e electrons/m^3",rhoe);


