clc;
clear;

printf("\n Example 9.16\n");

printf("\n (a)")
//Using the nomenclature in Figure 9.40 iii;
X=4;//width of horizontal plate and length vertical plate
Y=6;//length of horizontal plate
Z=3;//height of verical plate
W=Y/X;
H=Z/X;
A1=Z*X;//Area of plate 1
A2=X*Y;//Area of plate 2
F12=0.12;
printf("\n View Factor, F12= %.2f",F12);
//From equation 9.126:
F21=A1*F12/A2;
printf("\n View Factor, F21= %.2f",F21);
printf("\n (b)");
//For the two spheres
r1=1; //Diameter of sphere 1
r2=2; //Diameter of sphere 2
F12b=1;
F21b=(r1/r2)^2;
printf("\n View Factor, F21= %.2f",F21b);
F22b=1-F21b;
printf("\n View Factor, F22= %.2f",F22b);