//Example 5.2
clear;
clc;

//Given
n=2;//number of electrons transferred
E=1.1;//cell potential in volt
F=96500;//Farady charge in C

//To determine the free energy change delG
delG=-n*F*E;//the free energy change in J
mprintf('Free energy change for Daniell Cell = %f J',delG);
//end