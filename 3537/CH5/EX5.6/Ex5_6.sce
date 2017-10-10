//Example 5_6
clc();
clear;
//To calculate the inter planar spacing
//For theta=6.45
theta=6.45  //units in degrees
lamda=0.58    //units in Armstrongs
d_n=lamda/sin(6.45*%pi/180)    //units in Armstrongs
printf("Inter planara spacing at %.2fDegrees is d/n=%.3f Armstrongs",theta,d_n)
//For theta=9.15
theta=9.15  //units in degrees
lamda=0.58    //units in Armstrongs
d_n=lamda/sin(9.15*%pi/180)    //units in Armstrongs
printf("\nInter planara spacing at %.2fDegrees is d/n=%.3f Armstrongs",theta,d_n)
//For theta=13
theta=13  //units in degrees
lamda=0.58    //units in Armstrongs
d_n=lamda/sin(13*%pi/180)    //units in Armstrongs
printf("\nInter planara spacing at %.2fDegrees is d/n=%.3f Armstrongs",theta,d_n)
//In text book the answers are printed wrong as 2.568A, 1.817A,1.288A the correct answers are 5.163A,3.647A,2.578A
