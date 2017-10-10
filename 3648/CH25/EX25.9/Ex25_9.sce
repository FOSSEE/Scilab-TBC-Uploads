//Example 25_9
clc();
clear;
//To find the value of work function for material
h=6.63*10^-34     //units in J
c=3*10^8    //units in meters/sec
lamda=5*10^-7         //units in meters
vo=0.6          //units in V
e=1.6*10^-19      //units in eV
phi=((h*c)/lamda)-(vo*e)          //Units in J

phi=phi/(1.6*10^-19)   //units in eV

printf("The value of work function for material is Phi=%.2f eV",phi)
