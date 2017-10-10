clc;funcprot(0);//EXAMPLE 10.8
// Initialisation of Variables
%Nia=40;......//no, of grams of nickel in alloy at alla temperature
%NiL=32;......//Mass of Nickel present in Liquid
%Nialpha=45;......//Mass of NIckel present in alpha
//CALCULATIONS
x=(%Nia-%NiL)/(%Nialpha-%NiL);.....//Mass fraction of alloy in percent
disp(x,"Mass fraction of alloy in percent:")
printf("By converting 62percent alpha and 38percent Liquid are present.:")
