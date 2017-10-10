
//To Calculate the Amount of Heat flowing per second through the cube.

//Example 28.1

clear;

clc;

x=0.1;//Edge Length of the Copper Cube in cm

A=x^2;//Area of cross section in cm^2

K=385;//Thermal Conductivity of Copper in W/m-deg Celsius

T1=100;//Temperature of the first face

T2=0;//Temperature at the second face

Rf=K*A*(T1-T2)/x;//Amount of Heat flowing per second (del(Q)/del(t))

printf("The amount of heat flowing per sec=%d W",Rf);
