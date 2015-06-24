//Computation of Molar Mass of Gaseous substance

clear;
clc;

printf("\t Example 5.9\n");

d=7.71;// density, g/mL(given)
R=0.0821;//universal gas constant, L. atm/K.mol
T=36+273;// temp, K
P=2.88;//pressure, atm
M1=d*R*T/P;// mol. mass, g/mol
printf("\t the molecular mass of given compound is : %4.1f g/mol\n",M1);

//alternate method
//considering 1 L of compound
V=1;//volume, L
n=P*V/(R*T);//no of moles
m=7.71;//mass per 1 L, g
M2=m/n;// mol. mass, g/mol

printf("\t {alternate method} the molecular mass of given compound is : %4.1f g/mol\n",M2);
printf("\t the molecular formula can be only found by trial and error method as given in the book \n");
//End
