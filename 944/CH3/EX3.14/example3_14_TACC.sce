//example 3.14

clear;
clc;

//Given:
H1=-114.1;//standard heat of reaction:2NO(g)+O2(g)->2NO2(g);[KJ/mol]
H2=-110.2;//standard heat of reaction:4NO2(g)+O2(g)->2N2O5(g);[KJ/mol]
H3=180.5;//standard heat of reaction:N2(g)+O2(g)->2NO(g);[KJ/mol]


//to find the heat of formation of N2O5
//reacton:N2(g)+2.5O2(g)->N2O5(g)
H4=(2*H1+H2+2*H3)/2;//standard heat of formation of N2O5[KJ/mol]
printf("H(standard heat of formation of N2O5)=%f KJ/mol",H4);