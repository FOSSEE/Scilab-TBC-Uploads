clc;funcprot(0);//EXAMPLE 6.4
// Initialisation of Variables
Lf=2.195;........//Final length after failure
d1=0.505;.......//Diameter of alluminum alloy in in
d2=0.398;......//Final diameter of alluminum alloy in in
Lo=2;..........//Initial length of alluminum alloy 
//CALCULATIONS
A0=(%pi/4)*d1^2;........//Area of original of alluminum alloy
Af=(%pi/4)*d2^2;........//Area of final of alluminum   alloy
%E=((Lf-Lo)/Lo)*100;.....//Percentage of Elongation 
%R=((A0-Af)/A0)*100;......//Percentage of Reduction in area
disp(%E,"Percentage of Elongation:")
disp(%R,"Percentage of Reduction in area:")
printf("The final length is less than 2.205 in because, after fracture, the elastic strain is recovered.")
