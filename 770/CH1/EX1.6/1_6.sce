clear;
clc;

//Example - 1.6
//Page number - 23
printf("Example - 1.6 and Page number - 23\n\n");

// Given
V = 1;// [kg] - volume of tank
P = 10;// [bar] - pressure

//Here degree of freedom =1(C=1,P=2,threfore F=1)
//From steam table at 10 bar as reported in the book
V_liq = 0.001127;// [m^(3)/kg] - volume in liquid phase
V_vap = 0.19444;// [m^(3)/kg] - volume in vapour phase

//x*Vv=(1-x)*Vl // since two volumes are equal
x = (V_liq/(V_liq+V_vap));// [kg]
y = (1-x);//[kg]

printf(" Mass of saturated vapour is %f kg\n",x);
printf(" Mass of saturated liquid is %f kg",y);
