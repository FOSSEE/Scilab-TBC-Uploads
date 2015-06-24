//Ex1_7
//given 
//page no 12
clc;
clear;
disp('Solution (i)');
c=3*10^8;       //in m/s speed of light
l=640;          //in nm
u=2.2*10^8;     //in m/s
lm=u*l/c;           //wavelenth in medium
printf("\n The wavelength is %0.1f nm\n",lm);// The answer in the book is misprinted 
disp('Solution (ii)');
n=l/lm;         //refractive index
printf("\n Refractive Index is %0.3f \n",n);//The answer in the book is misprinted
