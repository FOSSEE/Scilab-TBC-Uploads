clc();
clear;
//To determine the displacement of the electron beam spot on the screen
e=1.6*10^-19;
B=5*10^-5;                            //magnetic field in Wb/m^2
l=0.04;                               //length of magnetic fiekd along the axis
m=9.1*10^-31;                         //mass of electron
D=0.25;                               //distance of the screen from the field
Va=600;                               //final anode voltage
y=(((e*B*l)/m)*sqrt(m/(2*e*Va))*(D+(l/2)))*10^2
printf("the displacement of the electron beam spot on the screen is %f cm",y);