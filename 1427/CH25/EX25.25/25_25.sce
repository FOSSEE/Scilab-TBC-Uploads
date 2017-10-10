//ques-25.25
//Calculating number of collisions for each molecule and total number of collisions in 1kL in one second and mean free path for a Nitrogen molecule
clc
P=1;//pressure (in atm)
T=298;//temperature (in K)
dia=3.74*10^-10;//collision diameter (in m)
N_V=(6.023*10^23*P)/(T*0.0821/1000);
Cavg=sqrt((8*8.314*T)/(%pi*28/1000));//average speed
//Number of collisions per second
z1=sqrt(2)*%pi*Cavg*N_V*dia^2;
//Total number of collisions per unit volume per second
z2=(1/2)*N_V*z1;
//Mean free path
mfp=1/(sqrt(2)*%pi*N_V*dia^2);
printf("The Number of collisions per second are %.2f*10^9, Total number of collisions per unit volume per second are %.2f*10^34 and mean free path is %.3f*10^-8 m.",z1*10^-9,z2*10^-34,mfp*10^8);
