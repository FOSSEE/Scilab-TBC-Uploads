clear;
clc;

// Illustration 12.1
// Page: 660

printf('Illustration 12.1 - Page: 660\n\n');

// Solution

//****Data****//
F=1000;// [kg]
Xo=0.8;// [wt. fraction water]
X1=0.05;// [wt. fraction water]
//************//

Yo=Xo/(1-Xo);// [kg water/kg dry solid]
Y1=X1/(1-X1);// [kg water/kg dry solid]
solid=F*(1-X1);// [kg]
printf("Moisture to be evaporated: %f kg\n",solid*(Yo-Y1));