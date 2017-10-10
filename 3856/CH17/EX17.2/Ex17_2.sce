//Calculate the Force Constant of the HCl molucule

//Example 17.2

clc;

clear;

c=3.00*10^10; //Speed of light in cm s^-1

newbar=2886; //Frequency in cm^-1

new=c*newbar; //Frequency in Hz

m1=1.008;  //Mass of the Hydrogen atom in amu

m2=34.97; //Mass of the Chlorine atom in amu

mew=(m1*m2*1.661*10^-27)/(m1+m2); //Reduced mass of the molucule in kg

K=4*%pi^2*new^2*mew; //Force constant of the molucule in N m^-1 (kg s^-2=kg m s^-2 m6-1, kg m s^-2 m^-1=N m^-1)

printf("Force constant of the molucule = %.2f*10^2 N m^-1",K*10^-2);
