//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.5
//calculation of the gain in the surface energy

//given data
R=10^-2//radius(in m) of the drop
n=1000//number of droplets formed
S=.075//surface tension(in N/m) of the water

//calculation
//volume of original drop = total volume of all droplets formed
r=R/n^(1/3)//radius of each droplet
A1=4*%pi*R^2//surface area of drop
A2=n*(4*%pi*r^2)//surface area of each droplet
deltaA=A2-A1//change in suface area
deltaU=deltaA*S//change in surface energy

printf('the gain in the surface energy is %3.1e J',deltaU)
