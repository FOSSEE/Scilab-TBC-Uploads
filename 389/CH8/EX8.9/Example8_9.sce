clear;
clc;

// Illustration 8.9
// Page: 327

printf('Illustration 8.9 - Page: 327\n\n');

// solution

//****Data****//
// C1=CH4 C2=C2H6 C3=n-C3H8 C4=C4H10
Abs=0.15;// [Total absorption,kmol]
T=25;// [OC]
y1=0.7;// [mol fraction]
y2=0.15;// [mol fraction]
y3=0.10;// [mol fraction]
y4=0.05;// [mol fraction]
x1=0.01;// [mol fraction]
x_involatile=0.99;// [mol fraction]
L_by_G=3.5;// [mol liquid/mol entering gas]
//******//

LbyG_top=L_by_G/(1-y2);
LbyG_bottom=(L_by_G+y2)/1;
LbyG_av=(LbyG_top+LbyG_bottom)/2;
// The number of eqb. trays is fixed by C3 absorption:
// For C3 at 25 OC;
m=4.10;
A=LbyG_av/m;
Frabs=0.7;// [Fractional absorption]
X0=0;
// From Eqn. 8.109:
deff('[y]=f43(Np)','y=Frabs-((A^Np)-A)/((A^Np)-1)');
Np=fsolve(2,f43);
printf("Number of trays required is %f \n",Np);