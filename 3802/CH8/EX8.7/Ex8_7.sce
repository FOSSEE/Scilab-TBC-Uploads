//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_7.sce.

clc;
clear;
P=300e3;
V=500;
a=8;
p=4;
Z=786;
theta=5;

I=P/V;
armature_AT=(1/2)*(I/a)*(Z/(2*p));               //Total AT per pole
demagnetizing_AT=armature_AT*(4*theta/360);       //demagnetizing AT per pole
distorting_AT=armature_AT-demagnetizing_AT;          //distorting AT per pole
printf("\n   Demagnetizing AT per pole=%d AT/pole \n",demagnetizing_AT)
printf("\n   Cross AT per pole=%4.0f AT/pole \n",distorting_AT)

//There is a error in the substitution of number of conductors (Z) in the book
//In the question Z=786 but problem is solved by substituting Z=768
//But I make the codes with the given data that is Z=786
//So the book answer vary 
