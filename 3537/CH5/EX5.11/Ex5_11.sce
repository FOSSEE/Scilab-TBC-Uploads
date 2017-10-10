//Example 5_11
clc();
clear;
//To find the wavenength and energy
n=4
a=107.87    //units in amu
N=10500
row=6.052*10^26
a=((n*a)/(N*row))^(1/3)*10^10  //units in A
h=1
k=1
l=1
d=a/sqrt(h^2+k^2+l^2)   //units in A
theta=19.      //units in degrees
lamda=2*d*sin(theta*%pi/180)     //units in A
printf("Wavelength is lamda=%.2fA",lamda)
lamda=lamda*10^-10   //units in meters

h=6.625*10^-34  //Plancks constant
c=3*10^8      //units in meter/sec
energy=(h*c)/(lamda*1.6*10^-19)   //units in eV
printf("\n energy is =%d eV",energy)
