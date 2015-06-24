clc
clear
//DATA GIVEN
Ms=50;                         //mass of dry steam in kg
Mw=1.5;                        //mass of water in suspension in kg

//dryness fraction, x=(mass of dry steam)/(mass of dry steam +mass of water in suspension)
x=Ms/(Ms+Mw);

printf('The Dryness fraction (Quality) of steam is: %1.3f.',x);
