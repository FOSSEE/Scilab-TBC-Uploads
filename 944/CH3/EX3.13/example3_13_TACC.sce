//example 3.13

clear;
clc;

//Given:
//("C3H6(g)+H2(g)->C3H8(g);H1=-29.6 Kcal");
//("C3H8(g)+5O2(g)->3CO2(g)+4H2O(l)  ;     H2=-530.6 Kcal");
//("C(s)+O2(g)->CO2(g);H3=-94.0 Kcal");
//("H2(g)+0.5O2(g)->H2O(l);H4=-68.3 Kcal. ");
H1=-29.6;//the standard heat of hydrogenation of gaseous propylene to propane[Kcal]
H2=-530.6;//the heat of combustion of propane[Kcal] 
H3=-94.0;//the heat of formation of carbon dioxide[Kcal]
H4=-68.3;//the heat of formation of liquid water[Kcal]


//to find the heat of combustion and formation of propylene
disp("C3H6(g)+4.5O2(g)->3CO2(g)+3H2O(l)");
H5=[3*H3+4*H4]-[H1+H2];//[Kcal]
printf("\n H(standard heat of combustion)=%f Kcal.\n",H5);
disp("3C(s)+3H2(g)->C3H6(g)");
H6=-H5+3*H3+3*H4;//[Kcal]
printf("\n H(standard heat of formation)=%f Kcal. \n",H6);
