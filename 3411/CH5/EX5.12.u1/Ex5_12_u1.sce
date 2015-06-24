//Example 5_12_u1
clc();
clear;
//To determine the cubic structure of element and lattice constant and to identify element
ratio=(sin(20*%pi/180)/sin(29*%pi/180))^2
printf("The ratio of sin(theta)^2 values for first and second angles is %.2f\n Hence the crystal structure is bcc\n",ratio)
lamda=0.154   //units in nm
h=1
k=1
l=0
theta=20       //units in degrees
a=(lamda/2)*(sqrt(sqrt(h^2+k^2+l^2)/sin(theta*(%pi/180))^2))           //units in nm
printf("Lattice constant a=%.3fnm \n And the element is tungsten Since Tungsten has lattice constant of %.3fnm and crystallizes in bcc structure",a,a)
//Given in textbook lattice constant as a=0.318nm but the correct answer is a=0.268nm
