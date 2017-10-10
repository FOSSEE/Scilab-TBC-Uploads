clc;funcprot(0);//EXAMPLE 15.1
// Initialisation of Variables
rho=3.2;.............//Specific Gravity of SiC in g/cm^2
Ww=385;.............//Weight of Ceramic when dry in g
Wd=360;.............//Weight of Ceramic after Soaking in water in g
Ws=224;.............//Weight of Ceramic Suspended in    water in g
//CALCULATIONS
A=((Ww-Wd)/(Ww-Ws))*100;..........//Apparent Porosity in percent
B=(Wd)/(Ww-Ws);..........//Bulk Density of Ceramic
T=((rho-B)/rho)*100;.......//True Porosity of Ceramic  in Percent
C=T-A;..............//Closed pore percent of ceramic
F=C/T;..............//Fraction Closed Pores of Ceramic
disp(A,"Apparent Porosity in percent:")
disp(B,"Bulk Density of Ceramic:")
disp(T,"True Porosity of Ceramic  in Percent:")
disp(F,"Fraction Closed Pores of Ceramic:")
