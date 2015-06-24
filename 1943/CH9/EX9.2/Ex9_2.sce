
clc
clear
//Input data
amr=226.095;//Atomic mass of radium in amu
AC=6.023*10^23;//Avogadro constant in molecules/g.mol
h=1620;//Half life of radium in years

//Calculations
D=(0.6931/(h*365*24*3600));//The decay constant in 1/s
Na=AC/amr;//Number of atoms per gram of radium 
Ao=D*Na;//Initial activity in dis/s

//Output
disp(D,"The decay constant (in s^-1) = ");
disp(Ao,"The initial activity of 1 g of radium 226 in dis/s) = ");
