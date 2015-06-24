//computation of molality from mass percent

clear;
clc;

printf("\t Example 12.5\n");

//considering 100g of solution
percent=35.4;//mass percent of H3PO4
H3PO4=97.99;//mol mass of H3PO4
n=percent/H3PO4;//moles of H3PO4
mH2O=(100-percent)/1000;//mass of solvent
m=n/mH2O;//molality of H3PO4, molal

printf("\t the molality of H3PO4 solution is : %4.2f m\n",m);

//End
