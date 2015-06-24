//Percentage composition of a compound

clear;
clc;

printf("\t Example 3.8\n");

H=1.008;//molar mass of H, g
P=30.97;//molar mass of P, g
O=16;//molar mass of O, g

MolMass=97.99;//mol. mass of H3PO4, g
percentH=3*H/MolMass*100;//percent of H
percentP=P/MolMass*100;//percent of P
percentO=4*O/MolMass*100;//percent of O

printf("\t the percent by mass of Hydrogen is : %4.3f percent\n",percentH);
printf("\t the percent by mass of Phosphorus is : %4.2f percent\n",percentP);
printf("\t the percent by mass of Oxygen is : %4.2f percent\n",percentO);

//End
