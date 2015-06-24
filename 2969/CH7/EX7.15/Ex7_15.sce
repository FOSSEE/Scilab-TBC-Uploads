clc
clear
//DATA GIVEN
ETAthb=30;                    //Brake thermal efficiency in %
afr=20;                       //air fuel ratio by weight
C=41800;                      //calorific value of fuel used in kJ/kg

//Brake thermal efficiency, ETAthb=work produced/heat supplied
work=(ETAthb/100)*C;          //work produced per kg of fuel
//STP conditions refer to 1.0132 bar and 15 deg celsius
m=afr;                        //mass of air per kg of fuel
R=287;
V=m*R*(15+273)/(1.0132*10^5); //volume of air used
//Brake mean effective pressure, Pmb=work done/cylinder volume
Pmb=(work*1000)/(V*10^5);

printf('The Brake mean effective pressure, Pmb is: %2.2f bar.\n',Pmb);
