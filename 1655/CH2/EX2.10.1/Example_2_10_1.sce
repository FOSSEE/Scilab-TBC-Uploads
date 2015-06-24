// Example 2.10.1  page 2.39

clc;
clear;

a=4.5d-6;        //core diameter
delta=0.25/100;      //relative index difference
lamda=0.85d-6;       //operating wavelength
n1=1.46;     //core refractive index

v= 2*%pi*a*n1*sqrt(2*delta)/lamda;      //computing normalized frequency
lamda_cut_off=v*lamda/2.405;        //computing cut off wavelength
lamda_cut_off=lamda_cut_off*10^9;
printf("\nCut off wavelength is %.d nanometer.",lamda_cut_off);

printf("\n\nWhen delta is 1.25 percent-");
delta=1.25/100;
v= 2*%pi*a*n1*sqrt(2*delta)/lamda;      //computing normalized frequency
lamda_cut_off=v*lamda/2.405;        //computing cut off wavelength
lamda_cut_off=lamda_cut_off*10^7;
lamda_cut_off=round(lamda_cut_off);
lamda_cut_off=lamda_cut_off*100;
printf("\nCut off wavelength is %.d nanometer.",lamda_cut_off);

//answer in the book for cut off wavelength in the book is given as 1214nm, deviation of 1nm.
