//Chapter 2, Example 2.10, page 50
clc
//Initialisation
ri1=1.00025                         //refractive index
ri2=1.00023                        //refractive index
h1=1                                //height in Km
h2=1.5                              //height in Km
n=1.00026                           //variation


//Calculation
deln=ri1-ri2
delh=h2-h1
d=deln/delh
R=n/d                              //radius of curvature


//Result
printf("Radiowave curvature radius, R = %.d Km",R)
