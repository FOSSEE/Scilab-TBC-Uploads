clear;
clc;

//Example14.1[Determining Mass Fractions from Mole Fractions]
//Given:-
yN2=0.781,yO2=0.209,yAr=0.01;//Mole fractions
M_N2=28,M_O2=32,M_Ar=39.9;//Molar Masses 
//Solution:-
M_air=yN2*M_N2+yO2*M_O2+yAr*M_Ar;//[kg/kmol]
disp("kg/kmol",M_air,"The molar mass of air is")
w_N2=yN2*M_N2/M_air;
w_O2=yO2*M_O2/M_air;
w_Ar=yAr*M_Ar/M_air;
disp("respectively","percent",100*w_Ar,"and","percent",100*w_O2,",","percent",100*w_N2,"The mass fractions of N2, O2 and Ar in dry standard atmosphere are")