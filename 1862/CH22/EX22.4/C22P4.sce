clear
clc
//to find mean free path and average collision rate of nytrogen at room temperature

//Given:
//room temperature
T = 300//in K
//atmospheric pressure
p = 1.01e5//in Pa
//effective diameter of nytrogen
d = 3.15e-10//in meters
//average speed
vav = 478//in m/s
//Boltzmann constant
k = 1.38e-23//in J/K

//Solution:
//applying formula of mean path
//mean free path of nytrogen at room temperature
lambda = (k*T)/(sqrt(2)*%pi*(d^2)*p)//in meters
//average collision rate of nytrogen at room temperature
rate = vav/lambda//in collisions/second

printf ("\n\n Mean free path of nytrogen at room temperature lambda = \n\n %.1e meters" ,lambda);
printf ("\n\n Average collision rate of nytrogen at room temperature rate = \n\n %.1e collisions/second" ,rate);
