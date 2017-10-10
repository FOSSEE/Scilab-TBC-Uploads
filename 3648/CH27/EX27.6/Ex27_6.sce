//Example 27_6
clc();
clear;
//To find how many radium atoms in the vial undergo decay
t1=5.1*10^10   //Units in sec
lamda=0.693/t1     //Units in sec^-1
n1=6.02*10^26        //Units in atoms/Kmol
n2=226 //Units in Kg/Kmol
m1=0.001      //Units in Kg
N=n1*m1/n2         //Units in number of atoms
deltat=1       //Units in sec
deltan=-lamda*N*deltat       //Units in Number
printf("The number of dis integrations per sec=")
disp(deltan)

