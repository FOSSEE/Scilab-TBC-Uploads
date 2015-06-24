//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 1.2\n\n\n");
// Chapter 1: Fundamental Concepts
// Problem 1.2 (page no. 18) 
// Solution

//Given
Mm=0.0123//Unit:lb //Mass of the moon;
Me=1 //Unit:lb //Mass of the earth;
Dm=0.273 //Unit:feet //Diameter of the moon;
De=1 //Unit:feet //Diameter of the earth;
Rm=Dm/2; //Radius of the moon; //Unit:feet
Re=De/2; //Radius of the earth; //Unit:feet

//F=(K*M1*M2)/d^2 //Law of universal gravitation;
//Fe=(K*Me*m)/Re^2; //Fe=Force exerted on the mass;
//Fm=(K*Mm*m)/Rm^2; //Fm=Force exerted on the moon;
F=(Me/Mm)*(Rm/Re)^2; //F=Fe/Fm;
printf("Relation of force exerted on earth to mass is")
disp(F,"Fe/Fm =");

