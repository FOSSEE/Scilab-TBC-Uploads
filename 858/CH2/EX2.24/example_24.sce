clc
clear 
printf("example 2.24 page number 80\n\n")

//to find amount of silver deposited
I=3   //in Ampere
t=900   //in s
m_eq=107.9    //in gm/mol
F=96500;

m=(I*t*m_eq)/F;
printf("mass = %f gm",m)
