// Example 7.10.5  page 7.55

clc;
clear;

lamda=900d-9;
h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
eta=65/100; //quantum efficiency
P0=0.5d-6;  //incident optical power
Im=10d2;   //avalanche gain

R= eta*q*lamda/(h*c);   //computing responsivity
Ip=10^8*P0*R;       //computing photocurrent
Ip=floor(Ip);
M=Im/Ip;        //computing multiplication factor
printf("\nMultiplication factor is %d.",M);

//answer in the book is 42.55 deviation 0.45
