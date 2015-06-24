// chapter 2
// example 2.5
// Calculate the required gate resistance source
// page-31
clear;
clc;
// given
Pg=0.012; // in W (power) Pg=Vg*Ig
gradient=3E3; // gradient=Vg/Ig
Egs=10; // in V
// calculate
// Since gradient*Pg=Vg^2 therefore we get
Vg=sqrt(gradient*Pg); // calculation of gate voltage
Ig=Pg/Vg; // calculation of gate current
Rg=Vg/Ig; // calculation of gate resistance
Ig=Ig*1E3; // changing unit from A to mA
Rg=Rg*1E-3; // changing unit from ohm to kohm
printf("\nThe required gate voltage is \tVg=%.f V\n",Vg);
printf("\nThe required gate current is \tIg=%.f mA\n",Ig);
printf("\nThe required gate source resistance is \tRg=%.f kohm\n",Rg);
// Note:  the value of gate source resistance has not been calculated in the book.