//=============================================================================================
// chapter 5 example 9

clc;
clear;

//input data
 t       = 3.0*10^-14;              //time in s
 n       = 2.5*10^22;              //in electrons per m^3
 m       = 9.1*10^-31;              //mass of electron in kilograms
 e       = 1.6*10^-19;              //charge of electron in coulombs
 T       = 3.25;                  //temperature in K


//formula
//K/(sigma*T)=2.44*10^-8   from wiedemann Franz law
//calculation
 sigma    = (n*(e^2)*t)/(m*10^-6);             //conductivity in m^3
 K        = (2.44*10^-8)*sigma*T;               //thermalconductivity in W/m-K


//result
 mprintf('thermal conductivity=%3.4f.W/m-K\n',K);
 mprintf(' Note: calculation mistake in textbook in calculating K as T value is taken 325 instead of 3.25');

//================================================================================================
