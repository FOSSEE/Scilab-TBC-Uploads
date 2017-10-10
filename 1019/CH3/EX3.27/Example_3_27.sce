//Example 3.27
clear;
clc;

//Given
E=-21;
c1=3;
delE = E * 10^6;//evolved energy in J
c = c1 * 10^8;//speed of light in m/s^2

//To determine change in mass
delm = delE/(c^2);//change in mass in kg by Einstein equation
m=E/(c1^2);
t=6-(2*8)
mprintf('change in mass = %f*10^%i kg',m,t);
//end