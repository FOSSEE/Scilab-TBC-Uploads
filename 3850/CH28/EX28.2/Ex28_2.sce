
//To Calculate the Thermal Resistance of an aluminium rod

//Example 28.2

clear;

clc;

x=0.2;//Length of Aluminium Rod in metres

K=200;//Thermal Conductivity of Aluminium in W/m-K

A=1*10^-4;//Area of Cross Section in metre^2

R=x/(K*A);//Thermal Resistance in K/W

printf("The Thermal Resistance is of Aluminium Rod=% d K/W",R);
