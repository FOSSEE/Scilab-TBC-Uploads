//Ex:4.33
clc;
clear;
close;
f=100;// frequency in MHz
y=300/f;// wavelength in m
dr=y/2;// the driven element in m
Rf=dr+(5*dr/100);// reflective in m
Df=dr-(5*dr/100);// deflective in m
Sp=0.2*y;// the spacing between terminal
printf("The reflective = %f m", Rf);
printf("\n The director = %f m", Df);
printf("\n The spacing between terminal = %f m", Sp);