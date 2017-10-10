
//To Calculate the fraction of Orignal Activity remaining after 40 hours
//Example 46.5

clear;

clc;

t=40;//Duration of Radioactive Decay in hours

thalf=20;//Half Life of Radioactive Nuclide in hours

Ar=1/2^(t/thalf);//Fraction of Orignal Activity remaining after 40 hours

printf("Fraction of Orignal Activity remaining after 40 hours = %.2f",Ar);
