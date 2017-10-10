//How high the person can climb on this energy intake

//Example4.2

clc;

clear;

M=73;  //Weight of the person in kg

m=500;  //Mass of milk that person drink in g 

Cv=720;  //Caloric value of milk in cal g^-1

Mw=17;  //Percant of milk that converted in mechanical work

W=(Mw*m*Cv*4.184)/100;  //Energy intake for mechanical work in J

g=9.81;  //Acceleration due to gravity in m s^-2

h=W/(M*g); //Person climb by this height in m

printf("The person climbs to a height = %.1f*10^2 m",h*10^-2);
